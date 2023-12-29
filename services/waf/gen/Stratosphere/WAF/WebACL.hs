module Stratosphere.WAF.WebACL (
        module Exports, WebACL(..), mkWebACL
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.WebACL.ActivatedRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAF.WebACL.WafActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACL
  = WebACL {defaultAction :: WafActionProperty,
            metricName :: (Value Prelude.Text),
            name :: (Value Prelude.Text),
            rules :: (Prelude.Maybe [ActivatedRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACL ::
  WafActionProperty
  -> Value Prelude.Text -> Value Prelude.Text -> WebACL
mkWebACL defaultAction metricName name
  = WebACL
      {defaultAction = defaultAction, metricName = metricName,
       name = name, rules = Prelude.Nothing}
instance ToResourceProperties WebACL where
  toResourceProperties WebACL {..}
    = ResourceProperties
        {awsType = "AWS::WAF::WebACL", supportsTags = Prelude.False,
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
  type PropertyType "DefaultAction" WebACL = WafActionProperty
  set newValue WebACL {..} = WebACL {defaultAction = newValue, ..}
instance Property "MetricName" WebACL where
  type PropertyType "MetricName" WebACL = Value Prelude.Text
  set newValue WebACL {..} = WebACL {metricName = newValue, ..}
instance Property "Name" WebACL where
  type PropertyType "Name" WebACL = Value Prelude.Text
  set newValue WebACL {..} = WebACL {name = newValue, ..}
instance Property "Rules" WebACL where
  type PropertyType "Rules" WebACL = [ActivatedRuleProperty]
  set newValue WebACL {..}
    = WebACL {rules = Prelude.pure newValue, ..}