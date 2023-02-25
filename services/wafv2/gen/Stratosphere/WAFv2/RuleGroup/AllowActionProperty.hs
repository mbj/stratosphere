module Stratosphere.WAFv2.RuleGroup.AllowActionProperty (
        module Exports, AllowActionProperty(..), mkAllowActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data AllowActionProperty
  = AllowActionProperty {customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
mkAllowActionProperty :: AllowActionProperty
mkAllowActionProperty
  = AllowActionProperty {customRequestHandling = Prelude.Nothing}
instance ToResourceProperties AllowActionProperty where
  toResourceProperties AllowActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.AllowAction",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRequestHandling"
                              Prelude.<$> customRequestHandling])}
instance JSON.ToJSON AllowActionProperty where
  toJSON AllowActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRequestHandling"
                 Prelude.<$> customRequestHandling]))
instance Property "CustomRequestHandling" AllowActionProperty where
  type PropertyType "CustomRequestHandling" AllowActionProperty = CustomRequestHandlingProperty
  set newValue AllowActionProperty {}
    = AllowActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}