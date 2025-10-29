module Stratosphere.IoTSiteWise.AccessPolicy.AccessPolicyResourceProperty (
        module Exports, AccessPolicyResourceProperty(..),
        mkAccessPolicyResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.PortalProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.ProjectProperty as Exports
import Stratosphere.ResourceProperties
data AccessPolicyResourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html>
    AccessPolicyResourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-portal>
                                  portal :: (Prelude.Maybe PortalProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-project>
                                  project :: (Prelude.Maybe ProjectProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPolicyResourceProperty :: AccessPolicyResourceProperty
mkAccessPolicyResourceProperty
  = AccessPolicyResourceProperty
      {portal = Prelude.Nothing, project = Prelude.Nothing}
instance ToResourceProperties AccessPolicyResourceProperty where
  toResourceProperties AccessPolicyResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.AccessPolicyResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Portal" Prelude.<$> portal,
                            (JSON..=) "Project" Prelude.<$> project])}
instance JSON.ToJSON AccessPolicyResourceProperty where
  toJSON AccessPolicyResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Portal" Prelude.<$> portal,
               (JSON..=) "Project" Prelude.<$> project]))
instance Property "Portal" AccessPolicyResourceProperty where
  type PropertyType "Portal" AccessPolicyResourceProperty = PortalProperty
  set newValue AccessPolicyResourceProperty {..}
    = AccessPolicyResourceProperty {portal = Prelude.pure newValue, ..}
instance Property "Project" AccessPolicyResourceProperty where
  type PropertyType "Project" AccessPolicyResourceProperty = ProjectProperty
  set newValue AccessPolicyResourceProperty {..}
    = AccessPolicyResourceProperty
        {project = Prelude.pure newValue, ..}