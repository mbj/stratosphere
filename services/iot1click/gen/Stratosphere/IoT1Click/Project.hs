module Stratosphere.IoT1Click.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT1Click.Project.PlacementTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Project
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html>
    Project {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-placementtemplate>
             placementTemplate :: PlacementTemplateProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-projectname>
             projectName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: PlacementTemplateProperty -> Project
mkProject placementTemplate
  = Project
      {haddock_workaround_ = (), placementTemplate = placementTemplate,
       description = Prelude.Nothing, projectName = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::IoT1Click::Project", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PlacementTemplate" JSON..= placementTemplate]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ProjectName" Prelude.<$> projectName]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PlacementTemplate" JSON..= placementTemplate]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ProjectName" Prelude.<$> projectName])))
instance Property "Description" Project where
  type PropertyType "Description" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {description = Prelude.pure newValue, ..}
instance Property "PlacementTemplate" Project where
  type PropertyType "PlacementTemplate" Project = PlacementTemplateProperty
  set newValue Project {..}
    = Project {placementTemplate = newValue, ..}
instance Property "ProjectName" Project where
  type PropertyType "ProjectName" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {projectName = Prelude.pure newValue, ..}