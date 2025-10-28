module Stratosphere.DataBrew.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Project.SampleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html>
    Project {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-datasetname>
             datasetName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-recipename>
             recipeName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-rolearn>
             roleArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-sample>
             sample :: (Prelude.Maybe SampleProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-databrew-project.html#cfn-databrew-project-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Project
mkProject datasetName name recipeName roleArn
  = Project
      {haddock_workaround_ = (), datasetName = datasetName, name = name,
       recipeName = recipeName, roleArn = roleArn,
       sample = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Project", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetName" JSON..= datasetName, "Name" JSON..= name,
                            "RecipeName" JSON..= recipeName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Sample" Prelude.<$> sample,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetName" JSON..= datasetName, "Name" JSON..= name,
               "RecipeName" JSON..= recipeName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Sample" Prelude.<$> sample,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatasetName" Project where
  type PropertyType "DatasetName" Project = Value Prelude.Text
  set newValue Project {..} = Project {datasetName = newValue, ..}
instance Property "Name" Project where
  type PropertyType "Name" Project = Value Prelude.Text
  set newValue Project {..} = Project {name = newValue, ..}
instance Property "RecipeName" Project where
  type PropertyType "RecipeName" Project = Value Prelude.Text
  set newValue Project {..} = Project {recipeName = newValue, ..}
instance Property "RoleArn" Project where
  type PropertyType "RoleArn" Project = Value Prelude.Text
  set newValue Project {..} = Project {roleArn = newValue, ..}
instance Property "Sample" Project where
  type PropertyType "Sample" Project = SampleProperty
  set newValue Project {..}
    = Project {sample = Prelude.pure newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}