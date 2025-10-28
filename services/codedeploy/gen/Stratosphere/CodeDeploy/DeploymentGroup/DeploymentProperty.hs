module Stratosphere.CodeDeploy.DeploymentGroup.DeploymentProperty (
        module Exports, DeploymentProperty(..), mkDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.RevisionLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html>
    DeploymentProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures>
                        ignoreApplicationStopFailures :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision>
                        revision :: RevisionLocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentProperty ::
  RevisionLocationProperty -> DeploymentProperty
mkDeploymentProperty revision
  = DeploymentProperty
      {haddock_workaround_ = (), revision = revision,
       description = Prelude.Nothing,
       ignoreApplicationStopFailures = Prelude.Nothing}
instance ToResourceProperties DeploymentProperty where
  toResourceProperties DeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.Deployment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Revision" JSON..= revision]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IgnoreApplicationStopFailures"
                                 Prelude.<$> ignoreApplicationStopFailures]))}
instance JSON.ToJSON DeploymentProperty where
  toJSON DeploymentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Revision" JSON..= revision]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IgnoreApplicationStopFailures"
                    Prelude.<$> ignoreApplicationStopFailures])))
instance Property "Description" DeploymentProperty where
  type PropertyType "Description" DeploymentProperty = Value Prelude.Text
  set newValue DeploymentProperty {..}
    = DeploymentProperty {description = Prelude.pure newValue, ..}
instance Property "IgnoreApplicationStopFailures" DeploymentProperty where
  type PropertyType "IgnoreApplicationStopFailures" DeploymentProperty = Value Prelude.Bool
  set newValue DeploymentProperty {..}
    = DeploymentProperty
        {ignoreApplicationStopFailures = Prelude.pure newValue, ..}
instance Property "Revision" DeploymentProperty where
  type PropertyType "Revision" DeploymentProperty = RevisionLocationProperty
  set newValue DeploymentProperty {..}
    = DeploymentProperty {revision = newValue, ..}