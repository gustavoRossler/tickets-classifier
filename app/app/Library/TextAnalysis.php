<?php

namespace App\Library;

use Illuminate\Support\Facades\Storage;

class TextAnalysis
{

    public static function getResults($text)
    {
        $headers =  array(
            "Content-type: application/json",
            "Authorization: Basic " . base64_encode("1963-EUTwRA4R:ZtZiNC0gf8pomiEbDKi7BZ/jU0oTdmT3ee0dyl2ukWjE")
        );

        $data_array = array();
        $data_array['T'] = $text;
        $data_array['S'] = true;
        $data_array['EM'] = true;
        $data = json_encode($data_array);

        $options = array(
            'http' => array(
                'header' => $headers,
                'method' => 'POST',
                'content' => $data
            )
        );
        $context  = stream_context_create($options);
        $result = file_get_contents('https://api.gotit.ai/NLU/v1.5/Analyze', false, $context);

        $result = json_decode($result);
        return $result;
    }
}
