module Stratosphere.WAFv2.WebACL.CountActionProperty (
        module Exports, CountActionProperty(..), mkCountActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data CountActionProperty
  = CountActionProperty {customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
mkCountActionProperty :: CountActionProperty
mkCountActionProperty
  = CountActionProperty {customRequestHandling = Prelude.Nothing}
instance ToResourceProperties CountActionProperty where
  toResourceProperties CountActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.CountAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRequestHandling"
                              Prelude.<$> customRequestHandling])}
instance JSON.ToJSON CountActionProperty where
  toJSON CountActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRequestHandling"
                 Prelude.<$> customRequestHandling]))
instance Property "CustomRequestHandling" CountActionProperty where
  type PropertyType "CustomRequestHandling" CountActionProperty = CustomRequestHandlingProperty
  set newValue CountActionProperty {}
    = CountActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}