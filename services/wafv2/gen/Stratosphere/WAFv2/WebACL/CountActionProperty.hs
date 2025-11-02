module Stratosphere.WAFv2.WebACL.CountActionProperty (
        module Exports, CountActionProperty(..), mkCountActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data CountActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countaction.html>
    CountActionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countaction.html#cfn-wafv2-webacl-countaction-customrequesthandling>
                         customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCountActionProperty :: CountActionProperty
mkCountActionProperty
  = CountActionProperty
      {haddock_workaround_ = (), customRequestHandling = Prelude.Nothing}
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
  set newValue CountActionProperty {..}
    = CountActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}