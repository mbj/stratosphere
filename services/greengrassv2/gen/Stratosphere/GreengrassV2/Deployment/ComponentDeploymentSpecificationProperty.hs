module Stratosphere.GreengrassV2.Deployment.ComponentDeploymentSpecificationProperty (
        module Exports, ComponentDeploymentSpecificationProperty(..),
        mkComponentDeploymentSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.ComponentConfigurationUpdateProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.ComponentRunWithProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentDeploymentSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentdeploymentspecification.html>
    ComponentDeploymentSpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentdeploymentspecification.html#cfn-greengrassv2-deployment-componentdeploymentspecification-componentversion>
                                              componentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentdeploymentspecification.html#cfn-greengrassv2-deployment-componentdeploymentspecification-configurationupdate>
                                              configurationUpdate :: (Prelude.Maybe ComponentConfigurationUpdateProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-componentdeploymentspecification.html#cfn-greengrassv2-deployment-componentdeploymentspecification-runwith>
                                              runWith :: (Prelude.Maybe ComponentRunWithProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentDeploymentSpecificationProperty ::
  ComponentDeploymentSpecificationProperty
mkComponentDeploymentSpecificationProperty
  = ComponentDeploymentSpecificationProperty
      {haddock_workaround_ = (), componentVersion = Prelude.Nothing,
       configurationUpdate = Prelude.Nothing, runWith = Prelude.Nothing}
instance ToResourceProperties ComponentDeploymentSpecificationProperty where
  toResourceProperties ComponentDeploymentSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.ComponentDeploymentSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentVersion" Prelude.<$> componentVersion,
                            (JSON..=) "ConfigurationUpdate" Prelude.<$> configurationUpdate,
                            (JSON..=) "RunWith" Prelude.<$> runWith])}
instance JSON.ToJSON ComponentDeploymentSpecificationProperty where
  toJSON ComponentDeploymentSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentVersion" Prelude.<$> componentVersion,
               (JSON..=) "ConfigurationUpdate" Prelude.<$> configurationUpdate,
               (JSON..=) "RunWith" Prelude.<$> runWith]))
instance Property "ComponentVersion" ComponentDeploymentSpecificationProperty where
  type PropertyType "ComponentVersion" ComponentDeploymentSpecificationProperty = Value Prelude.Text
  set newValue ComponentDeploymentSpecificationProperty {..}
    = ComponentDeploymentSpecificationProperty
        {componentVersion = Prelude.pure newValue, ..}
instance Property "ConfigurationUpdate" ComponentDeploymentSpecificationProperty where
  type PropertyType "ConfigurationUpdate" ComponentDeploymentSpecificationProperty = ComponentConfigurationUpdateProperty
  set newValue ComponentDeploymentSpecificationProperty {..}
    = ComponentDeploymentSpecificationProperty
        {configurationUpdate = Prelude.pure newValue, ..}
instance Property "RunWith" ComponentDeploymentSpecificationProperty where
  type PropertyType "RunWith" ComponentDeploymentSpecificationProperty = ComponentRunWithProperty
  set newValue ComponentDeploymentSpecificationProperty {..}
    = ComponentDeploymentSpecificationProperty
        {runWith = Prelude.pure newValue, ..}