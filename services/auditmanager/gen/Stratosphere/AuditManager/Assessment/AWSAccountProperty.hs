module Stratosphere.AuditManager.Assessment.AWSAccountProperty (
        AWSAccountProperty(..), mkAWSAccountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSAccountProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsaccount.html>
    AWSAccountProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsaccount.html#cfn-auditmanager-assessment-awsaccount-emailaddress>
                        emailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsaccount.html#cfn-auditmanager-assessment-awsaccount-id>
                        id :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-awsaccount.html#cfn-auditmanager-assessment-awsaccount-name>
                        name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSAccountProperty :: AWSAccountProperty
mkAWSAccountProperty
  = AWSAccountProperty
      {haddock_workaround_ = (), emailAddress = Prelude.Nothing,
       id = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties AWSAccountProperty where
  toResourceProperties AWSAccountProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.AWSAccount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                            (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON AWSAccountProperty where
  toJSON AWSAccountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailAddress" Prelude.<$> emailAddress,
               (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Name" Prelude.<$> name]))
instance Property "EmailAddress" AWSAccountProperty where
  type PropertyType "EmailAddress" AWSAccountProperty = Value Prelude.Text
  set newValue AWSAccountProperty {..}
    = AWSAccountProperty {emailAddress = Prelude.pure newValue, ..}
instance Property "Id" AWSAccountProperty where
  type PropertyType "Id" AWSAccountProperty = Value Prelude.Text
  set newValue AWSAccountProperty {..}
    = AWSAccountProperty {id = Prelude.pure newValue, ..}
instance Property "Name" AWSAccountProperty where
  type PropertyType "Name" AWSAccountProperty = Value Prelude.Text
  set newValue AWSAccountProperty {..}
    = AWSAccountProperty {name = Prelude.pure newValue, ..}