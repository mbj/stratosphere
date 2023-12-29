module Stratosphere.IoTSiteWise.Project (
        Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = Project {assetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             portalId :: (Value Prelude.Text),
             projectDescription :: (Prelude.Maybe (Value Prelude.Text)),
             projectName :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Value Prelude.Text -> Project
mkProject portalId projectName
  = Project
      {portalId = portalId, projectName = projectName,
       assetIds = Prelude.Nothing, projectDescription = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Project",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortalId" JSON..= portalId, "ProjectName" JSON..= projectName]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetIds" Prelude.<$> assetIds,
                               (JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortalId" JSON..= portalId, "ProjectName" JSON..= projectName]
              (Prelude.catMaybes
                 [(JSON..=) "AssetIds" Prelude.<$> assetIds,
                  (JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssetIds" Project where
  type PropertyType "AssetIds" Project = ValueList Prelude.Text
  set newValue Project {..}
    = Project {assetIds = Prelude.pure newValue, ..}
instance Property "PortalId" Project where
  type PropertyType "PortalId" Project = Value Prelude.Text
  set newValue Project {..} = Project {portalId = newValue, ..}
instance Property "ProjectDescription" Project where
  type PropertyType "ProjectDescription" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {projectDescription = Prelude.pure newValue, ..}
instance Property "ProjectName" Project where
  type PropertyType "ProjectName" Project = Value Prelude.Text
  set newValue Project {..} = Project {projectName = newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}