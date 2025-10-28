module Stratosphere.WAFRegional.WebACL (
        module Exports, WebACL(..), mkWebACL
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.WebACL.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFRegional.WebACL.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACL
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html>
    WebACL {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-defaultaction>
            defaultAction :: ActionProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-metricname>
            metricName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-rules>
            rules :: (Prelude.Maybe [RuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACL ::
  ActionProperty
  -> Value Prelude.Text -> Value Prelude.Text -> WebACL
mkWebACL defaultAction metricName name
  = WebACL
      {haddock_workaround_ = (), defaultAction = defaultAction,
       metricName = metricName, name = name, rules = Prelude.Nothing}
instance ToResourceProperties WebACL where
  toResourceProperties WebACL {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::WebACL",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultAction" JSON..= defaultAction,
                            "MetricName" JSON..= metricName, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Rules" Prelude.<$> rules]))}
instance JSON.ToJSON WebACL where
  toJSON WebACL {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultAction" JSON..= defaultAction,
               "MetricName" JSON..= metricName, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Rules" Prelude.<$> rules])))
instance Property "DefaultAction" WebACL where
  type PropertyType "DefaultAction" WebACL = ActionProperty
  set newValue WebACL {..} = WebACL {defaultAction = newValue, ..}
instance Property "MetricName" WebACL where
  type PropertyType "MetricName" WebACL = Value Prelude.Text
  set newValue WebACL {..} = WebACL {metricName = newValue, ..}
instance Property "Name" WebACL where
  type PropertyType "Name" WebACL = Value Prelude.Text
  set newValue WebACL {..} = WebACL {name = newValue, ..}
instance Property "Rules" WebACL where
  type PropertyType "Rules" WebACL = [RuleProperty]
  set newValue WebACL {..}
    = WebACL {rules = Prelude.pure newValue, ..}