module Stratosphere.AuditManager.Assessment.AWSAccountProperty (
        AWSAccountProperty(..), mkAWSAccountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSAccountProperty
  = AWSAccountProperty {emailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                        id :: (Prelude.Maybe (Value Prelude.Text)),
                        name :: (Prelude.Maybe (Value Prelude.Text))}
mkAWSAccountProperty :: AWSAccountProperty
mkAWSAccountProperty
  = AWSAccountProperty
      {emailAddress = Prelude.Nothing, id = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties AWSAccountProperty where
  toResourceProperties AWSAccountProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.AWSAccount",
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