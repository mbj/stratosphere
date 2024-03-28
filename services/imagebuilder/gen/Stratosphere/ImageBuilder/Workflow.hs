module Stratosphere.ImageBuilder.Workflow (
        Workflow(..), mkWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workflow
  = Workflow {changeDescription :: (Prelude.Maybe (Value Prelude.Text)),
              data' :: (Prelude.Maybe (Value Prelude.Text)),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
              type' :: (Value Prelude.Text),
              uri :: (Prelude.Maybe (Value Prelude.Text)),
              version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflow ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Workflow
mkWorkflow name type' version
  = Workflow
      {name = name, type' = type', version = version,
       changeDescription = Prelude.Nothing, data' = Prelude.Nothing,
       description = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       tags = Prelude.Nothing, uri = Prelude.Nothing}
instance ToResourceProperties Workflow where
  toResourceProperties Workflow {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Workflow",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type',
                            "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "ChangeDescription" Prelude.<$> changeDescription,
                               (JSON..=) "Data" Prelude.<$> data',
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Uri" Prelude.<$> uri]))}
instance JSON.ToJSON Workflow where
  toJSON Workflow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type',
               "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "ChangeDescription" Prelude.<$> changeDescription,
                  (JSON..=) "Data" Prelude.<$> data',
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Uri" Prelude.<$> uri])))
instance Property "ChangeDescription" Workflow where
  type PropertyType "ChangeDescription" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {changeDescription = Prelude.pure newValue, ..}
instance Property "Data" Workflow where
  type PropertyType "Data" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {data' = Prelude.pure newValue, ..}
instance Property "Description" Workflow where
  type PropertyType "Description" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {description = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Workflow where
  type PropertyType "KmsKeyId" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Workflow where
  type PropertyType "Name" Workflow = Value Prelude.Text
  set newValue Workflow {..} = Workflow {name = newValue, ..}
instance Property "Tags" Workflow where
  type PropertyType "Tags" Workflow = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Workflow {..}
    = Workflow {tags = Prelude.pure newValue, ..}
instance Property "Type" Workflow where
  type PropertyType "Type" Workflow = Value Prelude.Text
  set newValue Workflow {..} = Workflow {type' = newValue, ..}
instance Property "Uri" Workflow where
  type PropertyType "Uri" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {uri = Prelude.pure newValue, ..}
instance Property "Version" Workflow where
  type PropertyType "Version" Workflow = Value Prelude.Text
  set newValue Workflow {..} = Workflow {version = newValue, ..}