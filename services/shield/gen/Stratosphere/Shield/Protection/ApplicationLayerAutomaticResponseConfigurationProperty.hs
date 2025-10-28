module Stratosphere.Shield.Protection.ApplicationLayerAutomaticResponseConfigurationProperty (
        module Exports,
        ApplicationLayerAutomaticResponseConfigurationProperty(..),
        mkApplicationLayerAutomaticResponseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Shield.Protection.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationLayerAutomaticResponseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-applicationlayerautomaticresponseconfiguration.html>
    ApplicationLayerAutomaticResponseConfigurationProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-applicationlayerautomaticresponseconfiguration.html#cfn-shield-protection-applicationlayerautomaticresponseconfiguration-action>
                                                            action :: ActionProperty,
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-shield-protection-applicationlayerautomaticresponseconfiguration.html#cfn-shield-protection-applicationlayerautomaticresponseconfiguration-status>
                                                            status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationLayerAutomaticResponseConfigurationProperty ::
  ActionProperty
  -> Value Prelude.Text
     -> ApplicationLayerAutomaticResponseConfigurationProperty
mkApplicationLayerAutomaticResponseConfigurationProperty
  action
  status
  = ApplicationLayerAutomaticResponseConfigurationProperty
      {haddock_workaround_ = (), action = action, status = status}
instance ToResourceProperties ApplicationLayerAutomaticResponseConfigurationProperty where
  toResourceProperties
    ApplicationLayerAutomaticResponseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Shield::Protection.ApplicationLayerAutomaticResponseConfiguration",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Status" JSON..= status]}
instance JSON.ToJSON ApplicationLayerAutomaticResponseConfigurationProperty where
  toJSON ApplicationLayerAutomaticResponseConfigurationProperty {..}
    = JSON.object ["Action" JSON..= action, "Status" JSON..= status]
instance Property "Action" ApplicationLayerAutomaticResponseConfigurationProperty where
  type PropertyType "Action" ApplicationLayerAutomaticResponseConfigurationProperty = ActionProperty
  set
    newValue
    ApplicationLayerAutomaticResponseConfigurationProperty {..}
    = ApplicationLayerAutomaticResponseConfigurationProperty
        {action = newValue, ..}
instance Property "Status" ApplicationLayerAutomaticResponseConfigurationProperty where
  type PropertyType "Status" ApplicationLayerAutomaticResponseConfigurationProperty = Value Prelude.Text
  set
    newValue
    ApplicationLayerAutomaticResponseConfigurationProperty {..}
    = ApplicationLayerAutomaticResponseConfigurationProperty
        {status = newValue, ..}