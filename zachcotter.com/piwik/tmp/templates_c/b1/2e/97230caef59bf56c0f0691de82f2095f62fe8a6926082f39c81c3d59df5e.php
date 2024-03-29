<?php

/* @CoreHome/_donate.twig */
class __TwigTemplate_b12e97230caef59bf56c0f0691de82f2095f62fe8a6926082f39c81c3d59df5e extends Twig_Template
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
        echo "<div class=\"piwik-donate-call\">
    <div class=\"piwik-donate-message\">
        ";
        // line 3
        if (array_key_exists("msg", $context)) {
            // line 4
            echo "            ";
            echo twig_escape_filter($this->env, $this->getContext($context, "msg"), "html", null, true);
            echo "
        ";
        } else {
            // line 6
            echo "            <p>";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_DonateCall1")), "html", null, true);
            echo "</p>
            <p><strong><em>";
            // line 7
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_DonateCall2")), "html", null, true);
            echo "</em></strong></p>
            <p>";
            // line 8
            echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_DonateCall3", "<em><strong>", "</strong></em>"));
            echo "</p>
        ";
        }
        // line 10
        echo "    </div>

    <span id=\"piwik-worth\">";
        // line 12
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_HowMuchIsPiwikWorth")), "html", null, true);
        echo "</span>

    <div class=\"donate-form-instructions\">(";
        // line 14
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_DonateFormInstructions")), "html", null, true);
        echo ")</div>

    <form action=\"index.php?module=CoreHome&action=redirectToPaypal&idSite=1\" method=\"post\" target=\"_blank\">
        <input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\"/>
        <input type=\"hidden\" name=\"hosted_button_id\" value=\"DVKLY73RS7JTE\"/>
        <input type=\"hidden\" name=\"currency_code\" value=\"USD\"/>
        <input type=\"hidden\" name=\"on0\" value=\"Piwik Supporter\"/>

        <div class=\"piwik-donate-slider\">
            <div class=\"slider-range\">
                <div class=\"slider-position\"></div>
            </div>
            <div style=\"display:inline-block;\">
                <div class=\"slider-donate-amount\">\$30/";
        // line 27
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_YearShort")), "html", null, true);
        echo "</div>

                <img class=\"slider-smiley-face\" width=\"40\" height=\"40\" src=\"plugins/Zeitgeist/images/smileyprog_1.png\"/>
            </div>

            <input type=\"hidden\" name=\"os0\" value=\"Option 1\"/>
        </div>

        <div class=\"donate-submit\">
            <input type=\"image\" src=\"plugins/Zeitgeist/images/paypal_subscribe.gif\" border=\"0\" name=\"submit\"
                title=\"";
        // line 37
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_SubscribeAndBecomePiwikSupporter")), "html", null, true);
        echo "\"/>
\t\t\t<a class=\"donate-spacer\">";
        // line 38
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_MakeOneTimeDonation")), "html", null, true);
        echo "</a>
            <a href=\"index.php?module=CoreHome&action=redirectToPaypal&idSite=1&cmd=_s-xclick&hosted_button_id=RPL23NJURMTFA&bb2_screener_=1357583494+83.233.186.82\"
                target=\"_blank\" class=\"donate-one-time\">";
        // line 40
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("CoreHome_MakeOneTimeDonation")), "html", null, true);
        echo "</a>
        </div>

        <!-- to cache images -->
        <img style=\"display:none;\" src=\"plugins/Zeitgeist/images/smileyprog_0.png\"/>
        <img style=\"display:none;\" src=\"plugins/Zeitgeist/images/smileyprog_1.png\"/>
        <img style=\"display:none;\" src=\"plugins/Zeitgeist/images/smileyprog_2.png\"/>
        <img style=\"display:none;\" src=\"plugins/Zeitgeist/images/smileyprog_3.png\"/>
        <img style=\"display:none;\" src=\"plugins/Zeitgeist/images/smileyprog_4.png\"/>
    </form>
    ";
        // line 50
        if (array_key_exists("footerMessage", $context)) {
            // line 51
            echo "        <div class=\"form-description\">
            ";
            // line 52
            echo twig_escape_filter($this->env, $this->getContext($context, "footerMessage"), "html", null, true);
            echo "
        </div>
    ";
        }
        // line 55
        echo "</div>
<script type=\"text/javascript\">
\$(document).ready(function () {
    // Note: this will cause problems if more than one donate form is on the page
    \$('.piwik-donate-slider').each(function () {
        \$(this).trigger('piwik:changePosition', {position: 1});
    });
});
</script>
";
    }

    public function getTemplateName()
    {
        return "@CoreHome/_donate.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  116 => 55,  105 => 50,  87 => 38,  83 => 37,  70 => 27,  49 => 12,  45 => 10,  40 => 8,  31 => 6,  23 => 3,  19 => 1,  218 => 75,  215 => 74,  211 => 72,  209 => 71,  203 => 69,  196 => 65,  191 => 63,  188 => 62,  186 => 61,  183 => 60,  179 => 58,  173 => 55,  169 => 53,  166 => 52,  164 => 51,  161 => 50,  151 => 47,  147 => 46,  143 => 45,  140 => 44,  138 => 43,  135 => 42,  131 => 40,  121 => 37,  117 => 36,  113 => 35,  110 => 52,  107 => 51,  100 => 29,  96 => 28,  92 => 40,  88 => 26,  84 => 25,  79 => 23,  73 => 20,  68 => 18,  64 => 16,  54 => 14,  50 => 12,  46 => 11,  41 => 8,  39 => 7,  36 => 7,  27 => 3,  25 => 4,);
    }
}
