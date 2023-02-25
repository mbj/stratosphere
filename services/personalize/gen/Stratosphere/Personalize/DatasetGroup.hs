module Stratosphere.Personalize.DatasetGroup (
        DatasetGroup(..), mkDatasetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetGroup
  = DatasetGroup {domain :: (Prelude.Maybe (Value Prelude.Text)),
                  kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                  name :: (Value Prelude.Text),
                  roleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDatasetGroup :: Value Prelude.Text -> DatasetGroup
mkDatasetGroup name
  = DatasetGroup
      {name = name, domain = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties DatasetGroup where
  toResourceProperties DatasetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::DatasetGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON DatasetGroup where
  toJSON DatasetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "Domain" DatasetGroup where
  type PropertyType "Domain" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {domain = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" DatasetGroup where
  type PropertyType "KmsKeyArn" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Name" DatasetGroup where
  type PropertyType "Name" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..} = DatasetGroup {name = newValue, ..}
instance Property "RoleArn" DatasetGroup where
  type PropertyType "RoleArn" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {roleArn = Prelude.pure newValue, ..}