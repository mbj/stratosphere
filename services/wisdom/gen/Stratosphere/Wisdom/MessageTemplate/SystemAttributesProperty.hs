module Stratosphere.Wisdom.MessageTemplate.SystemAttributesProperty (
        module Exports, SystemAttributesProperty(..),
        mkSystemAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.SystemEndpointAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemattributes.html>
    SystemAttributesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemattributes.html#cfn-wisdom-messagetemplate-systemattributes-customerendpoint>
                              customerEndpoint :: (Prelude.Maybe SystemEndpointAttributesProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemattributes.html#cfn-wisdom-messagetemplate-systemattributes-name>
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-systemattributes.html#cfn-wisdom-messagetemplate-systemattributes-systemendpoint>
                              systemEndpoint :: (Prelude.Maybe SystemEndpointAttributesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemAttributesProperty :: SystemAttributesProperty
mkSystemAttributesProperty
  = SystemAttributesProperty
      {haddock_workaround_ = (), customerEndpoint = Prelude.Nothing,
       name = Prelude.Nothing, systemEndpoint = Prelude.Nothing}
instance ToResourceProperties SystemAttributesProperty where
  toResourceProperties SystemAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.SystemAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerEndpoint" Prelude.<$> customerEndpoint,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SystemEndpoint" Prelude.<$> systemEndpoint])}
instance JSON.ToJSON SystemAttributesProperty where
  toJSON SystemAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerEndpoint" Prelude.<$> customerEndpoint,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SystemEndpoint" Prelude.<$> systemEndpoint]))
instance Property "CustomerEndpoint" SystemAttributesProperty where
  type PropertyType "CustomerEndpoint" SystemAttributesProperty = SystemEndpointAttributesProperty
  set newValue SystemAttributesProperty {..}
    = SystemAttributesProperty
        {customerEndpoint = Prelude.pure newValue, ..}
instance Property "Name" SystemAttributesProperty where
  type PropertyType "Name" SystemAttributesProperty = Value Prelude.Text
  set newValue SystemAttributesProperty {..}
    = SystemAttributesProperty {name = Prelude.pure newValue, ..}
instance Property "SystemEndpoint" SystemAttributesProperty where
  type PropertyType "SystemEndpoint" SystemAttributesProperty = SystemEndpointAttributesProperty
  set newValue SystemAttributesProperty {..}
    = SystemAttributesProperty
        {systemEndpoint = Prelude.pure newValue, ..}