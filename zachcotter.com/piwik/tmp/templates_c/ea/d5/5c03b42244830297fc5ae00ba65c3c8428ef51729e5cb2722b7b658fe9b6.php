<?php

/* @SegmentEditor/_segmentSelector.twig */
class __TwigTemplate_ead55c03b42244830297fc5ae00ba65c3c8428ef51729e5cb2722b7b658fe9b6 extends Twig_Template
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
        echo "<div class=\"SegmentEditor\" style=\"display:none;\">
    <div class=\"segmentationContainer listHtml\">
        <span class=\"segmentationTitle\"></span>
        <div class=\"dropdown-body\">
            <ul class=\"submenu\">
                <li>";
        // line 6
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SelectSegmentOfVisitors")), "html", null, true);
        echo "
                    <div class=\"segmentList\">
                        <ul>
                        </ul>
                    </div>
                </li>
            </ul>

            ";
        // line 14
        if ($this->getContext($context, "authorizedToCreateSegments")) {
            // line 15
            echo "                <a class=\"add_new_segment\">";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AddNewSegment")), "html", null, true);
            echo "</a>
            ";
        } else {
            // line 17
            echo "                <ul class=\"submenu\">
                <li> <span class='youMustBeLoggedIn'>";
            // line 18
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_YouMustBeLoggedInToCreateSegments")), "html", null, true);
            echo "
                    <br/>&rsaquo; <a href='index.php?module=";
            // line 19
            echo twig_escape_filter($this->env, $this->getContext($context, "loginModule"), "html", null, true);
            echo "'>";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("Login_LogIn")), "html", null, true);
            echo "</a> </span>
                </li>
                </ul>
            ";
        }
        // line 23
        echo "        </div>
    </div>

    <div class=\"initial-state-rows\">";
        // line 26
        echo "<div class=\"segment-add-row initial\"><div>
        <span>+ ";
        // line 27
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_DragDropCondition"));
        echo "</span>
    </div></div>
    <div class=\"segment-and\">";
        // line 29
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_OperatorAND"));
        echo "</div>
    <div class=\"segment-add-row initial\"><div>
        <span>+ ";
        // line 31
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_DragDropCondition"));
        echo "</span>
    </div></div>
    </div>

    <div class=\"segment-row-inputs\">
        <div class=\"segment-input metricListBlock\">
            <select title=\"";
        // line 37
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_ChooseASegment")), "html", null, true);
        echo "\" class=\"metricList\">
                ";
        // line 38
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "segmentsByCategory"));
        foreach ($context['_seq'] as $context["category"] => $context["segmentsInCategory"]) {
            // line 39
            echo "                <optgroup label=\"";
            echo twig_escape_filter($this->env, $this->getContext($context, "category"), "html", null, true);
            echo "\">
                    ";
            // line 40
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "segmentsInCategory"));
            foreach ($context['_seq'] as $context["_key"] => $context["segmentInCategory"]) {
                // line 41
                echo "                        <option data-type=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "segmentInCategory"), "type"), "html", null, true);
                echo "\" value=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "segmentInCategory"), "segment"), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "segmentInCategory"), "name"), "html", null, true);
                echo "</option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segmentInCategory'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 43
            echo "                </optgroup>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['category'], $context['segmentsInCategory'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 45
        echo "            </select>
        </div>
        <div class=\"segment-input metricMatchBlock\">
            <select title=\"";
        // line 48
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Matches")), "html", null, true);
        echo "\">
                <option value=\"==\">";
        // line 49
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationEquals")), "html", null, true);
        echo "</option>
                <option value=\"!=\">";
        // line 50
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationNotEquals")), "html", null, true);
        echo "</option>
                <option value=\"<=\">";
        // line 51
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationAtMost")), "html", null, true);
        echo "</option>
                <option value=\">=\">";
        // line 52
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationAtLeast")), "html", null, true);
        echo "</option>
                <option value=\"<\">";
        // line 53
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationLessThan")), "html", null, true);
        echo "</option>
                <option value=\">\">";
        // line 54
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationGreaterThan")), "html", null, true);
        echo "</option>
                <option value=\"=@\">";
        // line 55
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationContains")), "html", null, true);
        echo "</option>
                <option value=\"!@\">";
        // line 56
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_OperationDoesNotContain")), "html", null, true);
        echo "</option>
            </select>
        </div>
        <div class=\"segment-input metricValueBlock\">
            <input type=\"text\" title=\"";
        // line 60
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Value")), "html", null, true);
        echo "\">
        </div>
        <div class=\"clear\"></div>
    </div>
    <div class=\"segment-rows\">
        <div class=\"segment-row\">
            <a href=\"#\" class=\"segment-close\"></a>
            <a href=\"#\" class=\"segment-loading\"></a>
        </div>
    </div>
    <div class=\"segment-or\">";
        // line 70
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_OperatorOR")), "html", null, true);
        echo "</div>
    <div class=\"segment-add-or\"><div>
            ";
        // line 72
        ob_start();
        echo "<span>";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_OperatorOR")), "html", null, true);
        echo "</span>";
        $context["orCondition"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 73
        echo "            <a href=\"#\"> + ";
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AddANDorORCondition", $this->getContext($context, "orCondition")));
        echo " </a>
        </div>
    </div>
    <div class=\"segment-and\">";
        // line 76
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_OperatorAND")), "html", null, true);
        echo "</div>
    <div class=\"segment-add-row\"><div>
            ";
        // line 78
        ob_start();
        echo "<span>";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_OperatorAND")), "html", null, true);
        echo "</span>";
        $context["andCondition"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 79
        echo "            <a href=\"#\">+ ";
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AddANDorORCondition", $this->getContext($context, "andCondition")));
        echo "</a>
        </div>
    </div>
    <div class=\"segment-element\">
        <div class=\"segment-nav\">
            <h4 class=\"visits\"><span class=\"available_segments\"><strong>
                <select class=\"available_segments_select\"></select>
            </strong></span></h4>
            <div class=\"scrollable\">
            <ul>
                ";
        // line 89
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getContext($context, "segmentsByCategory"));
        foreach ($context['_seq'] as $context["category"] => $context["segmentsInCategory"]) {
            // line 90
            echo "                <li data=\"visit\">
                    <a class=\"metric_category\" href=\"#\">";
            // line 91
            echo twig_escape_filter($this->env, $this->getContext($context, "category"), "html", null, true);
            echo "</a>
                    <ul style=\"display:none;\">
                        ";
            // line 93
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "segmentsInCategory"));
            foreach ($context['_seq'] as $context["_key"] => $context["segmentInCategory"]) {
                // line 94
                echo "                            <li data-metric=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "segmentInCategory"), "segment"), "html", null, true);
                echo "\"><a class=\"ddmetric\" href=\"#\">";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "segmentInCategory"), "name"), "html", null, true);
                echo "</a></li>
                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segmentInCategory'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 96
            echo "                    </ul>
                </li>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['category'], $context['segmentsInCategory'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 99
        echo "            </ul>
            </div>
            <div class=\"custom_select_search\">
                <a href=\"#\"></a>
                <input type=\"text\" aria-haspopup=\"true\" aria-autocomplete=\"list\" role=\"textbox\" autocomplete=\"off\" class=\"inp ui-autocomplete-input segmentSearch\" value=\"";
        // line 103
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Search")), "html", null, true);
        echo "\" length=\"15\">
            </div>
        </div>
        <div class=\"segment-content\">
            <div class=\"segment-top\" ";
        // line 107
        if ((!$this->getContext($context, "isSuperUser"))) {
            echo "style=\"display:none\"";
        }
        echo ">
                ";
        // line 108
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_ThisSegmentIsVisibleTo")), "html", null, true);
        echo " <span class=\"enable_all_users\"><strong>
                        <select class=\"enable_all_users_select\">
                            <option selected=\"1\" value=\"0\">";
        // line 110
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_VisibleToMe")), "html", null, true);
        echo "</option>
                            <option value=\"1\">";
        // line 111
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_VisibleToAllUsers")), "html", null, true);
        echo "</option>
                        </select>
                    </strong></span>

                ";
        // line 115
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SegmentIsDisplayedForWebsite")), "html", null, true);
        echo "<span class=\"visible_to_website\"><strong>
                        <select class=\"visible_to_website_select\">
                            <option selected=\"\" value=\"";
        // line 117
        echo twig_escape_filter($this->env, $this->getContext($context, "idSite"), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SegmentDisplayedThisWebsiteOnly")), "html", null, true);
        echo "</option>
                            <option value=\"0\">";
        // line 118
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SegmentDisplayedAllWebsites")), "html", null, true);
        echo "</option>
                        </select>
                    </strong></span>
                ";
        // line 121
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_And")), "html", null, true);
        echo " <span class=\"auto_archive\"><strong>
                        <select class=\"auto_archive_select\">
                            ";
        // line 123
        if ($this->getContext($context, "createRealTimeSegmentsIsEnabled")) {
            // line 124
            echo "                            <option selected=\"1\" value=\"0\">";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AutoArchiveRealTime")), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_DefaultAppended")), "html", null, true);
            echo "</option>
                            ";
        }
        // line 126
        echo "                            <option ";
        if ((!$this->getContext($context, "createRealTimeSegmentsIsEnabled"))) {
            echo "selected=\"1\"";
        }
        echo " value=\"1\">";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AutoArchivePreProcessed")), "html", null, true);
        echo " </option>
                        </select>
                    </strong></span>

            </div>
            <h3>";
        // line 131
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Name")), "html", null, true);
        echo ": <span  class=\"segmentName\"></span> <a class=\"editSegmentName\" href=\"#\">";
        echo twig_escape_filter($this->env, twig_lower_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Edit"))), "html", null, true);
        echo "</a></h3>
        </div>
        <div class=\"segment-footer\">
            <div piwik-rate-feature title=\"Segment Editor\" style=\"display:inline-block;float: left;margin-top: 2px;margin-right: 10px;\"></div>
            <span class=\"segmentFooterNote\">The Segment Editor was <a class='crowdfundingLink' href='http://crowdfunding.piwik.org/custom-segments-editor/' target='_blank'>crowdfunded</a> with the awesome support of 80 companies and Piwik users worldwide!</span>
            <a class=\"delete\" href=\"#\">";
        // line 136
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Delete")), "html", null, true);
        echo "</a>
            <a class=\"close\" href=\"#\">";
        // line 137
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Close")), "html", null, true);
        echo "</a>
            <button class=\"saveAndApply\">";
        // line 138
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SaveAndApply")), "html", null, true);
        echo "</button>
        </div>
    </div>
</div>
<div class=\"segmentListContainer\">
<div class=\"ui-confirm segment-delete-confirm\">
    <h2>";
        // line 144
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AreYouSureDeleteSegment")), "html", null, true);
        echo "</h2>
    <input role=\"yes\" type=\"button\" value=\"";
        // line 145
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Yes")), "html", null, true);
        echo "\"/>
    <input role=\"no\" type=\"button\" value=\"";
        // line 146
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_No")), "html", null, true);
        echo "\"/>
</div>
<div class=\"ui-confirm pleaseChangeBrowserAchivingDisabledSetting\">
    <h2>";
        // line 149
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SegmentNotApplied", $this->getContext($context, "nameOfCurrentSegment")));
        echo "</h2>
    ";
        // line 150
        ob_start();
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_AutoArchivePreProcessed")), "html", null, true);
        $context["segmentSetting"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 151
        echo "    <input role=\"yes\" type=\"button\" value=\"";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("General_Ok")), "html", null, true);
        echo "\"/>
    <p class=\"description\">
        ";
        // line 153
        echo call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_SegmentNotAppliedMessage", $this->getContext($context, "nameOfCurrentSegment")));
        echo "
        <br/>
        ";
        // line 155
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_DataAvailableAtLaterDate")), "html", null, true);
        echo "
        ";
        // line 156
        if ($this->getContext($context, "isSuperUser")) {
            // line 157
            echo "            <br/> <br/> ";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('translate')->getCallable(), array("SegmentEditor_YouMayChangeSetting", "browser_archiving_disabled_enforce", $this->getContext($context, "segmentSetting"))), "html", null, true);
            echo "
        ";
        }
        // line 159
        echo "    </p>
</div>
</div>";
    }

    public function getTemplateName()
    {
        return "@SegmentEditor/_segmentSelector.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  412 => 159,  406 => 157,  404 => 156,  400 => 155,  395 => 153,  389 => 151,  385 => 150,  381 => 149,  375 => 146,  371 => 145,  367 => 144,  358 => 138,  354 => 137,  350 => 136,  340 => 131,  327 => 126,  319 => 124,  317 => 123,  312 => 121,  306 => 118,  300 => 117,  295 => 115,  288 => 111,  284 => 110,  279 => 108,  273 => 107,  266 => 103,  260 => 99,  252 => 96,  241 => 94,  237 => 93,  232 => 91,  229 => 90,  225 => 89,  211 => 79,  205 => 78,  200 => 76,  193 => 73,  187 => 72,  182 => 70,  169 => 60,  162 => 56,  158 => 55,  154 => 54,  150 => 53,  146 => 52,  142 => 51,  138 => 50,  134 => 49,  130 => 48,  125 => 45,  118 => 43,  105 => 41,  101 => 40,  96 => 39,  92 => 38,  88 => 37,  79 => 31,  74 => 29,  69 => 27,  66 => 26,  61 => 23,  52 => 19,  48 => 18,  45 => 17,  39 => 15,  40 => 6,  37 => 14,  34 => 4,  30 => 3,  26 => 6,  19 => 1,);
    }
}
