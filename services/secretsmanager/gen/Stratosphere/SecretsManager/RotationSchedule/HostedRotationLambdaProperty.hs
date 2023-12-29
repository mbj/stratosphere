module Stratosphere.SecretsManager.RotationSchedule.HostedRotationLambdaProperty (
        HostedRotationLambdaProperty(..), mkHostedRotationLambdaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedRotationLambdaProperty
  = HostedRotationLambdaProperty {excludeCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                                  kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  masterSecretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  masterSecretKmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  rotationLambdaName :: (Prelude.Maybe (Value Prelude.Text)),
                                  rotationType :: (Value Prelude.Text),
                                  runtime :: (Prelude.Maybe (Value Prelude.Text)),
                                  superuserSecretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  superuserSecretKmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  vpcSecurityGroupIds :: (Prelude.Maybe (Value Prelude.Text)),
                                  vpcSubnetIds :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostedRotationLambdaProperty ::
  Value Prelude.Text -> HostedRotationLambdaProperty
mkHostedRotationLambdaProperty rotationType
  = HostedRotationLambdaProperty
      {rotationType = rotationType, excludeCharacters = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, masterSecretArn = Prelude.Nothing,
       masterSecretKmsKeyArn = Prelude.Nothing,
       rotationLambdaName = Prelude.Nothing, runtime = Prelude.Nothing,
       superuserSecretArn = Prelude.Nothing,
       superuserSecretKmsKeyArn = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing,
       vpcSubnetIds = Prelude.Nothing}
instance ToResourceProperties HostedRotationLambdaProperty where
  toResourceProperties HostedRotationLambdaProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::RotationSchedule.HostedRotationLambda",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RotationType" JSON..= rotationType]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeCharacters" Prelude.<$> excludeCharacters,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "MasterSecretArn" Prelude.<$> masterSecretArn,
                               (JSON..=) "MasterSecretKmsKeyArn"
                                 Prelude.<$> masterSecretKmsKeyArn,
                               (JSON..=) "RotationLambdaName" Prelude.<$> rotationLambdaName,
                               (JSON..=) "Runtime" Prelude.<$> runtime,
                               (JSON..=) "SuperuserSecretArn" Prelude.<$> superuserSecretArn,
                               (JSON..=) "SuperuserSecretKmsKeyArn"
                                 Prelude.<$> superuserSecretKmsKeyArn,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds,
                               (JSON..=) "VpcSubnetIds" Prelude.<$> vpcSubnetIds]))}
instance JSON.ToJSON HostedRotationLambdaProperty where
  toJSON HostedRotationLambdaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RotationType" JSON..= rotationType]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeCharacters" Prelude.<$> excludeCharacters,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "MasterSecretArn" Prelude.<$> masterSecretArn,
                  (JSON..=) "MasterSecretKmsKeyArn"
                    Prelude.<$> masterSecretKmsKeyArn,
                  (JSON..=) "RotationLambdaName" Prelude.<$> rotationLambdaName,
                  (JSON..=) "Runtime" Prelude.<$> runtime,
                  (JSON..=) "SuperuserSecretArn" Prelude.<$> superuserSecretArn,
                  (JSON..=) "SuperuserSecretKmsKeyArn"
                    Prelude.<$> superuserSecretKmsKeyArn,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds,
                  (JSON..=) "VpcSubnetIds" Prelude.<$> vpcSubnetIds])))
instance Property "ExcludeCharacters" HostedRotationLambdaProperty where
  type PropertyType "ExcludeCharacters" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {excludeCharacters = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" HostedRotationLambdaProperty where
  type PropertyType "KmsKeyArn" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "MasterSecretArn" HostedRotationLambdaProperty where
  type PropertyType "MasterSecretArn" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {masterSecretArn = Prelude.pure newValue, ..}
instance Property "MasterSecretKmsKeyArn" HostedRotationLambdaProperty where
  type PropertyType "MasterSecretKmsKeyArn" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {masterSecretKmsKeyArn = Prelude.pure newValue, ..}
instance Property "RotationLambdaName" HostedRotationLambdaProperty where
  type PropertyType "RotationLambdaName" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {rotationLambdaName = Prelude.pure newValue, ..}
instance Property "RotationType" HostedRotationLambdaProperty where
  type PropertyType "RotationType" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty {rotationType = newValue, ..}
instance Property "Runtime" HostedRotationLambdaProperty where
  type PropertyType "Runtime" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {runtime = Prelude.pure newValue, ..}
instance Property "SuperuserSecretArn" HostedRotationLambdaProperty where
  type PropertyType "SuperuserSecretArn" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {superuserSecretArn = Prelude.pure newValue, ..}
instance Property "SuperuserSecretKmsKeyArn" HostedRotationLambdaProperty where
  type PropertyType "SuperuserSecretKmsKeyArn" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {superuserSecretKmsKeyArn = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" HostedRotationLambdaProperty where
  type PropertyType "VpcSecurityGroupIds" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {vpcSecurityGroupIds = Prelude.pure newValue, ..}
instance Property "VpcSubnetIds" HostedRotationLambdaProperty where
  type PropertyType "VpcSubnetIds" HostedRotationLambdaProperty = Value Prelude.Text
  set newValue HostedRotationLambdaProperty {..}
    = HostedRotationLambdaProperty
        {vpcSubnetIds = Prelude.pure newValue, ..}