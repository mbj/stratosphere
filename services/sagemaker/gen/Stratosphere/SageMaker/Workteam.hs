module Stratosphere.SageMaker.Workteam (
        module Exports, Workteam(..), mkWorkteam
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.MemberDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.NotificationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workteam
  = Workteam {description :: (Prelude.Maybe (Value Prelude.Text)),
              memberDefinitions :: (Prelude.Maybe [MemberDefinitionProperty]),
              notificationConfiguration :: (Prelude.Maybe NotificationConfigurationProperty),
              tags :: (Prelude.Maybe [Tag]),
              workforceName :: (Prelude.Maybe (Value Prelude.Text)),
              workteamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkteam :: Workteam
mkWorkteam
  = Workteam
      {description = Prelude.Nothing,
       memberDefinitions = Prelude.Nothing,
       notificationConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing, workforceName = Prelude.Nothing,
       workteamName = Prelude.Nothing}
instance ToResourceProperties Workteam where
  toResourceProperties Workteam {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "MemberDefinitions" Prelude.<$> memberDefinitions,
                            (JSON..=) "NotificationConfiguration"
                              Prelude.<$> notificationConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "WorkforceName" Prelude.<$> workforceName,
                            (JSON..=) "WorkteamName" Prelude.<$> workteamName])}
instance JSON.ToJSON Workteam where
  toJSON Workteam {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "MemberDefinitions" Prelude.<$> memberDefinitions,
               (JSON..=) "NotificationConfiguration"
                 Prelude.<$> notificationConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "WorkforceName" Prelude.<$> workforceName,
               (JSON..=) "WorkteamName" Prelude.<$> workteamName]))
instance Property "Description" Workteam where
  type PropertyType "Description" Workteam = Value Prelude.Text
  set newValue Workteam {..}
    = Workteam {description = Prelude.pure newValue, ..}
instance Property "MemberDefinitions" Workteam where
  type PropertyType "MemberDefinitions" Workteam = [MemberDefinitionProperty]
  set newValue Workteam {..}
    = Workteam {memberDefinitions = Prelude.pure newValue, ..}
instance Property "NotificationConfiguration" Workteam where
  type PropertyType "NotificationConfiguration" Workteam = NotificationConfigurationProperty
  set newValue Workteam {..}
    = Workteam {notificationConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Workteam where
  type PropertyType "Tags" Workteam = [Tag]
  set newValue Workteam {..}
    = Workteam {tags = Prelude.pure newValue, ..}
instance Property "WorkforceName" Workteam where
  type PropertyType "WorkforceName" Workteam = Value Prelude.Text
  set newValue Workteam {..}
    = Workteam {workforceName = Prelude.pure newValue, ..}
instance Property "WorkteamName" Workteam where
  type PropertyType "WorkteamName" Workteam = Value Prelude.Text
  set newValue Workteam {..}
    = Workteam {workteamName = Prelude.pure newValue, ..}