<?php

/* @CoreHome/_topBar.twig */
class __TwigTemplate_e88cd6434c3eb5e6844327dcd59cb77856ee7cbff1d658d0bfafa250739dcbe9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo call_user_func_array($this->env->getFunction('postEvent')->getCallable(), array("Template.beforeTopBar", $this->getContext($context, "userAlias"), $this->getContext($context, "userLogin"), $this->getContext($context, "topMenu")));
        echo "
<div id=\"topBars\">
    ";
        // line 3
        $this->env->loadTemplate("@CoreHome/_topBarHelloMenu.twig")->display($context);
        // line 4
        echo "    ";
        $this->env->loadTemplate("@CoreHome/_topBarTopMenu.twig")->display($context);
        // line 5
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "@CoreHome/_topBar.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  26 => 4,  63 => 9,  49 => 7,  33 => 4,  52 => 17,  48 => 15,  21 => 3,  28 => 5,  24 => 3,  144 => 38,  138 => 36,  131 => 33,  128 => 32,  121 => 31,  116 => 29,  104 => 26,  100 => 25,  96 => 24,  92 => 23,  87 => 22,  85 => 21,  80 => 20,  77 => 15,  71 => 14,  68 => 13,  62 => 12,  59 => 8,  44 => 8,  35 => 6,  31 => 3,  27 => 4,  23 => 3,  19 => 1,  139 => 46,  136 => 35,  132 => 37,  129 => 36,  126 => 35,  119 => 22,  117 => 21,  112 => 28,  110 => 17,  108 => 27,  102 => 13,  89 => 9,  83 => 7,  75 => 48,  72 => 47,  70 => 45,  66 => 44,  60 => 41,  55 => 38,  53 => 10,  50 => 9,  41 => 11,  38 => 29,  36 => 28,  32 => 26,  30 => 6,  22 => 2,  56 => 12,  54 => 11,  51 => 10,  47 => 33,  45 => 32,  42 => 6,  40 => 5,  37 => 10,  34 => 3,  29 => 5,);
    }
}
