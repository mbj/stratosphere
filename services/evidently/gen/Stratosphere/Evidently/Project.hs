module Stratosphere.Evidently.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Project.AppConfigResourceObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Project.DataDeliveryObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html>
    Project {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html#cfn-evidently-project-appconfigresource>
             appConfigResource :: (Prelude.Maybe AppConfigResourceObjectProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html#cfn-evidently-project-datadelivery>
             dataDelivery :: (Prelude.Maybe DataDeliveryObjectProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html#cfn-evidently-project-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html#cfn-evidently-project-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-project.html#cfn-evidently-project-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Project
mkProject name
  = Project
      {haddock_workaround_ = (), name = name,
       appConfigResource = Prelude.Nothing,
       dataDelivery = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Project", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AppConfigResource" Prelude.<$> appConfigResource,
                               (JSON..=) "DataDelivery" Prelude.<$> dataDelivery,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AppConfigResource" Prelude.<$> appConfigResource,
                  (JSON..=) "DataDelivery" Prelude.<$> dataDelivery,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppConfigResource" Project where
  type PropertyType "AppConfigResource" Project = AppConfigResourceObjectProperty
  set newValue Project {..}
    = Project {appConfigResource = Prelude.pure newValue, ..}
instance Property "DataDelivery" Project where
  type PropertyType "DataDelivery" Project = DataDeliveryObjectProperty
  set newValue Project {..}
    = Project {dataDelivery = Prelude.pure newValue, ..}
instance Property "Description" Project where
  type PropertyType "Description" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {description = Prelude.pure newValue, ..}
instance Property "Name" Project where
  type PropertyType "Name" Project = Value Prelude.Text
  set newValue Project {..} = Project {name = newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}