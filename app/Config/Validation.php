<?php

namespace Config;

use CodeIgniter\Validation\CreditCardRules;
use CodeIgniter\Validation\FileRules;
use CodeIgniter\Validation\FormatRules;
use CodeIgniter\Validation\Rules;

class Validation
{
    //--------------------------------------------------------------------
    // Setup
    //--------------------------------------------------------------------

    /**
     * Stores the classes that contain the
     * rules that are available.
     *
     * @var string[]
     */
    public $ruleSets = [
        Rules::class,
        FormatRules::class,
        FileRules::class,
        CreditCardRules::class,
    ];

    public $login = [
        'username' => [
            'label'  => 'username',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Username Is Required',
            ],
        ],
        'password' => [
            'label'  => 'password',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Password Is Required',
            ],
        ],
        'captcha' => [
            'label'  => 'captcha',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Captcha Is Required',
            ],
        ],
    ];

    public $relationadd = [
        'name' => [
            'label'  => 'name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Relation Name Is Required',
            ],
        ],
        'template_id' => [
            'label'  => 'template_id',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Template Name Is Required',
            ],
        ],
    ];

    public $relationedit = [
        'name' => [
            'label'  => 'name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Relation Name Is Required',
            ],
        ]
    ];

    public $useradd = [
        'first_name' => [
            'label'  => 'first_name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'First Name Is Required',
            ],
        ],
        'last_name' => [
            'label'  => 'last_name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Last Name Is Required',
            ],
        ],
        'username' => [
            'label'  => 'username',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Username Is Required',
            ],
        ],
        'email' => [
            'label'  => 'email',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Email Is Required',
            ],
        ],
        'password' => [
            'label'  => 'password',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Password Is Required',
            ],
        ],
        // 'role_name' => [
        //     'label'  => 'role_name',
        //     'rules'  => 'required',
        //     'errors' => [
        //         'required' => 'Role Name Is Required',
        //     ],
        // ],
    ];

    public $useredit = [
        'first_name' => [
            'label'  => 'first_name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'First Name Is Required',
            ],
        ],
        'last_name' => [
            'label'  => 'last_name',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Last Name Is Required',
            ],
        ],
        'email' => [
            'label'  => 'email',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Email Is Required',
            ],
        ],
        'password' => [
            'label'  => 'password',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Password Is Required',
            ],
        ],
        'confirm_password' => [
            'label'  => 'confirm_password',
            'rules'  => 'required|matches[password]',
            'errors' => [
                'required' => 'Confirm Password Is Required',
            ],
        ],
    ];
    
    public $pdfadd = [
        'sponsored_person' => [
            'label'  => 'policy_holder',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Sponsored Person Is Required',
            ],
        ],
        'birth_date' => [
            'label'  => 'birth_date',
            'rules'  => 'required',
            'errors' => [
                'required' => 'Birth Date Is Required',
                // 'valid_date' => 'Please, Enter Valid date.',
            ],
        ],
    ];

    /**
     * Specifies the views that are used to display the
     * errors.
     *
     * @var array<string, string>
     */
    public $templates = [
        'list'   => 'CodeIgniter\Validation\Views\list',
        'single' => 'CodeIgniter\Validation\Views\single',
    ];

    //--------------------------------------------------------------------
    // Rules
    //--------------------------------------------------------------------
}
