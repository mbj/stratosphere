module Stratosphere.WAFv2.WebACL.ForwardedIPConfigurationProperty (
        ForwardedIPConfigurationProperty(..),
        mkForwardedIPConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ForwardedIPConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html>
    ForwardedIPConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html#cfn-wafv2-webacl-forwardedipconfiguration-fallbackbehavior>
                                      fallbackBehavior :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-forwardedipconfiguration.html#cfn-wafv2-webacl-forwardedipconfiguration-headername>
                                      headerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForwardedIPConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ForwardedIPConfigurationProperty
mkForwardedIPConfigurationProperty fallbackBehavior headerName
  = ForwardedIPConfigurationProperty
      {haddock_workaround_ = (), fallbackBehavior = fallbackBehavior,
       headerName = headerName}
instance ToResourceProperties ForwardedIPConfigurationProperty where
  toResourceProperties ForwardedIPConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ForwardedIPConfiguration",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior,
                       "HeaderName" JSON..= headerName]}
instance JSON.ToJSON ForwardedIPConfigurationProperty where
  toJSON ForwardedIPConfigurationProperty {..}
    = JSON.object
        ["FallbackBehavior" JSON..= fallbackBehavior,
         "HeaderName" JSON..= headerName]
instance Property "FallbackBehavior" ForwardedIPConfigurationProperty where
  type PropertyType "FallbackBehavior" ForwardedIPConfigurationProperty = Value Prelude.Text
  set newValue ForwardedIPConfigurationProperty {..}
    = ForwardedIPConfigurationProperty
        {fallbackBehavior = newValue, ..}
instance Property "HeaderName" ForwardedIPConfigurationProperty where
  type PropertyType "HeaderName" ForwardedIPConfigurationProperty = Value Prelude.Text
  set newValue ForwardedIPConfigurationProperty {..}
    = ForwardedIPConfigurationProperty {headerName = newValue, ..}