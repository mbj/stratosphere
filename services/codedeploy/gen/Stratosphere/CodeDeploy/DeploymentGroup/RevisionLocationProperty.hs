module Stratosphere.CodeDeploy.DeploymentGroup.RevisionLocationProperty (
        module Exports, RevisionLocationProperty(..),
        mkRevisionLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.GitHubLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RevisionLocationProperty
  = RevisionLocationProperty {gitHubLocation :: (Prelude.Maybe GitHubLocationProperty),
                              revisionType :: (Prelude.Maybe (Value Prelude.Text)),
                              s3Location :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRevisionLocationProperty :: RevisionLocationProperty
mkRevisionLocationProperty
  = RevisionLocationProperty
      {gitHubLocation = Prelude.Nothing, revisionType = Prelude.Nothing,
       s3Location = Prelude.Nothing}
instance ToResourceProperties RevisionLocationProperty where
  toResourceProperties RevisionLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.RevisionLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GitHubLocation" Prelude.<$> gitHubLocation,
                            (JSON..=) "RevisionType" Prelude.<$> revisionType,
                            (JSON..=) "S3Location" Prelude.<$> s3Location])}
instance JSON.ToJSON RevisionLocationProperty where
  toJSON RevisionLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GitHubLocation" Prelude.<$> gitHubLocation,
               (JSON..=) "RevisionType" Prelude.<$> revisionType,
               (JSON..=) "S3Location" Prelude.<$> s3Location]))
instance Property "GitHubLocation" RevisionLocationProperty where
  type PropertyType "GitHubLocation" RevisionLocationProperty = GitHubLocationProperty
  set newValue RevisionLocationProperty {..}
    = RevisionLocationProperty
        {gitHubLocation = Prelude.pure newValue, ..}
instance Property "RevisionType" RevisionLocationProperty where
  type PropertyType "RevisionType" RevisionLocationProperty = Value Prelude.Text
  set newValue RevisionLocationProperty {..}
    = RevisionLocationProperty
        {revisionType = Prelude.pure newValue, ..}
instance Property "S3Location" RevisionLocationProperty where
  type PropertyType "S3Location" RevisionLocationProperty = S3LocationProperty
  set newValue RevisionLocationProperty {..}
    = RevisionLocationProperty {s3Location = Prelude.pure newValue, ..}