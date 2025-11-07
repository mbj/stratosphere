module Stratosphere.WAFv2.WebACL.UriFragmentProperty (
        UriFragmentProperty(..), mkUriFragmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UriFragmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-urifragment.html>
    UriFragmentProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-urifragment.html#cfn-wafv2-webacl-urifragment-fallbackbehavior>
                         fallbackBehavior :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUriFragmentProperty :: UriFragmentProperty
mkUriFragmentProperty
  = UriFragmentProperty
      {haddock_workaround_ = (), fallbackBehavior = Prelude.Nothing}
instance ToResourceProperties UriFragmentProperty where
  toResourceProperties UriFragmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.UriFragment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FallbackBehavior" Prelude.<$> fallbackBehavior])}
instance JSON.ToJSON UriFragmentProperty where
  toJSON UriFragmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FallbackBehavior" Prelude.<$> fallbackBehavior]))
instance Property "FallbackBehavior" UriFragmentProperty where
  type PropertyType "FallbackBehavior" UriFragmentProperty = Value Prelude.Text
  set newValue UriFragmentProperty {..}
    = UriFragmentProperty
        {fallbackBehavior = Prelude.pure newValue, ..}