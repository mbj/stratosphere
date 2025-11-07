module Stratosphere.Batch.JobDefinition.EFSAuthorizationConfigProperty (
        EFSAuthorizationConfigProperty(..),
        mkEFSAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EFSAuthorizationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsauthorizationconfig.html>
    EFSAuthorizationConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsauthorizationconfig.html#cfn-batch-jobdefinition-efsauthorizationconfig-accesspointid>
                                    accessPointId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsauthorizationconfig.html#cfn-batch-jobdefinition-efsauthorizationconfig-iam>
                                    iam :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEFSAuthorizationConfigProperty :: EFSAuthorizationConfigProperty
mkEFSAuthorizationConfigProperty
  = EFSAuthorizationConfigProperty
      {haddock_workaround_ = (), accessPointId = Prelude.Nothing,
       iam = Prelude.Nothing}
instance ToResourceProperties EFSAuthorizationConfigProperty where
  toResourceProperties EFSAuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EFSAuthorizationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
                            (JSON..=) "Iam" Prelude.<$> iam])}
instance JSON.ToJSON EFSAuthorizationConfigProperty where
  toJSON EFSAuthorizationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
               (JSON..=) "Iam" Prelude.<$> iam]))
instance Property "AccessPointId" EFSAuthorizationConfigProperty where
  type PropertyType "AccessPointId" EFSAuthorizationConfigProperty = Value Prelude.Text
  set newValue EFSAuthorizationConfigProperty {..}
    = EFSAuthorizationConfigProperty
        {accessPointId = Prelude.pure newValue, ..}
instance Property "Iam" EFSAuthorizationConfigProperty where
  type PropertyType "Iam" EFSAuthorizationConfigProperty = Value Prelude.Text
  set newValue EFSAuthorizationConfigProperty {..}
    = EFSAuthorizationConfigProperty {iam = Prelude.pure newValue, ..}