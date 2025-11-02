module Stratosphere.MediaTailor.SourceLocation.AccessConfigurationProperty (
        module Exports, AccessConfigurationProperty(..),
        mkAccessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.SourceLocation.SecretsManagerAccessTokenConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-accessconfiguration.html>
    AccessConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-accessconfiguration.html#cfn-mediatailor-sourcelocation-accessconfiguration-accesstype>
                                 accessType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-accessconfiguration.html#cfn-mediatailor-sourcelocation-accessconfiguration-secretsmanageraccesstokenconfiguration>
                                 secretsManagerAccessTokenConfiguration :: (Prelude.Maybe SecretsManagerAccessTokenConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessConfigurationProperty :: AccessConfigurationProperty
mkAccessConfigurationProperty
  = AccessConfigurationProperty
      {haddock_workaround_ = (), accessType = Prelude.Nothing,
       secretsManagerAccessTokenConfiguration = Prelude.Nothing}
instance ToResourceProperties AccessConfigurationProperty where
  toResourceProperties AccessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation.AccessConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessType" Prelude.<$> accessType,
                            (JSON..=) "SecretsManagerAccessTokenConfiguration"
                              Prelude.<$> secretsManagerAccessTokenConfiguration])}
instance JSON.ToJSON AccessConfigurationProperty where
  toJSON AccessConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessType" Prelude.<$> accessType,
               (JSON..=) "SecretsManagerAccessTokenConfiguration"
                 Prelude.<$> secretsManagerAccessTokenConfiguration]))
instance Property "AccessType" AccessConfigurationProperty where
  type PropertyType "AccessType" AccessConfigurationProperty = Value Prelude.Text
  set newValue AccessConfigurationProperty {..}
    = AccessConfigurationProperty
        {accessType = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessTokenConfiguration" AccessConfigurationProperty where
  type PropertyType "SecretsManagerAccessTokenConfiguration" AccessConfigurationProperty = SecretsManagerAccessTokenConfigurationProperty
  set newValue AccessConfigurationProperty {..}
    = AccessConfigurationProperty
        {secretsManagerAccessTokenConfiguration = Prelude.pure newValue,
         ..}