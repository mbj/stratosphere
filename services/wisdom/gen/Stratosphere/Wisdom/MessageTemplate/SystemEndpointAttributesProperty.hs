module Stratosphere.Wisdom.MessageTemplate.SystemEndpointAttributesProperty (
        SystemEndpointAttributesProperty(..),
        mkSystemEndpointAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemEndpointAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemendpointattributes.html>
    SystemEndpointAttributesProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemendpointattributes.html#cfn-wisdom-messagetemplate-systemendpointattributes-address>
                                      address :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemEndpointAttributesProperty ::
  SystemEndpointAttributesProperty
mkSystemEndpointAttributesProperty
  = SystemEndpointAttributesProperty
      {haddock_workaround_ = (), address = Prelude.Nothing}
instance ToResourceProperties SystemEndpointAttributesProperty where
  toResourceProperties SystemEndpointAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.SystemEndpointAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address])}
instance JSON.ToJSON SystemEndpointAttributesProperty where
  toJSON SystemEndpointAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address]))
instance Property "Address" SystemEndpointAttributesProperty where
  type PropertyType "Address" SystemEndpointAttributesProperty = Value Prelude.Text
  set newValue SystemEndpointAttributesProperty {..}
    = SystemEndpointAttributesProperty
        {address = Prelude.pure newValue, ..}