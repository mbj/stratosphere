module Stratosphere.EMRServerless.Application.IdentityCenterConfigurationProperty (
        IdentityCenterConfigurationProperty(..),
        mkIdentityCenterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityCenterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-identitycenterconfiguration.html>
    IdentityCenterConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-identitycenterconfiguration.html#cfn-emrserverless-application-identitycenterconfiguration-identitycenterinstancearn>
                                         identityCenterInstanceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityCenterConfigurationProperty ::
  IdentityCenterConfigurationProperty
mkIdentityCenterConfigurationProperty
  = IdentityCenterConfigurationProperty
      {haddock_workaround_ = (),
       identityCenterInstanceArn = Prelude.Nothing}
instance ToResourceProperties IdentityCenterConfigurationProperty where
  toResourceProperties IdentityCenterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.IdentityCenterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdentityCenterInstanceArn"
                              Prelude.<$> identityCenterInstanceArn])}
instance JSON.ToJSON IdentityCenterConfigurationProperty where
  toJSON IdentityCenterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdentityCenterInstanceArn"
                 Prelude.<$> identityCenterInstanceArn]))
instance Property "IdentityCenterInstanceArn" IdentityCenterConfigurationProperty where
  type PropertyType "IdentityCenterInstanceArn" IdentityCenterConfigurationProperty = Value Prelude.Text
  set newValue IdentityCenterConfigurationProperty {..}
    = IdentityCenterConfigurationProperty
        {identityCenterInstanceArn = Prelude.pure newValue, ..}