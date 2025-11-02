module Stratosphere.AuditManager.Assessment.AWSServiceProperty (
        AWSServiceProperty(..), mkAWSServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSServiceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsservice.html>
    AWSServiceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsservice.html#cfn-auditmanager-assessment-awsservice-servicename>
                        serviceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSServiceProperty :: AWSServiceProperty
mkAWSServiceProperty
  = AWSServiceProperty
      {haddock_workaround_ = (), serviceName = Prelude.Nothing}
instance ToResourceProperties AWSServiceProperty where
  toResourceProperties AWSServiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.AWSService",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServiceName" Prelude.<$> serviceName])}
instance JSON.ToJSON AWSServiceProperty where
  toJSON AWSServiceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServiceName" Prelude.<$> serviceName]))
instance Property "ServiceName" AWSServiceProperty where
  type PropertyType "ServiceName" AWSServiceProperty = Value Prelude.Text
  set newValue AWSServiceProperty {..}
    = AWSServiceProperty {serviceName = Prelude.pure newValue, ..}