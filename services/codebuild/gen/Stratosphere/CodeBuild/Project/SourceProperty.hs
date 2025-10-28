module Stratosphere.CodeBuild.Project.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.BuildStatusConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.GitSubmodulesConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.SourceAuthProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth>
                    auth :: (Prelude.Maybe SourceAuthProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec>
                    buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildstatusconfig>
                    buildStatusConfig :: (Prelude.Maybe BuildStatusConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth>
                    gitCloneDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitsubmodulesconfig>
                    gitSubmodulesConfig :: (Prelude.Maybe GitSubmodulesConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl>
                    insecureSsl :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location>
                    location :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-reportbuildstatus>
                    reportBuildStatus :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-sourceidentifier>
                    sourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: Value Prelude.Text -> SourceProperty
mkSourceProperty type'
  = SourceProperty
      {haddock_workaround_ = (), type' = type', auth = Prelude.Nothing,
       buildSpec = Prelude.Nothing, buildStatusConfig = Prelude.Nothing,
       gitCloneDepth = Prelude.Nothing,
       gitSubmodulesConfig = Prelude.Nothing,
       insecureSsl = Prelude.Nothing, location = Prelude.Nothing,
       reportBuildStatus = Prelude.Nothing,
       sourceIdentifier = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Auth" Prelude.<$> auth,
                               (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                               (JSON..=) "BuildStatusConfig" Prelude.<$> buildStatusConfig,
                               (JSON..=) "GitCloneDepth" Prelude.<$> gitCloneDepth,
                               (JSON..=) "GitSubmodulesConfig" Prelude.<$> gitSubmodulesConfig,
                               (JSON..=) "InsecureSsl" Prelude.<$> insecureSsl,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "ReportBuildStatus" Prelude.<$> reportBuildStatus,
                               (JSON..=) "SourceIdentifier" Prelude.<$> sourceIdentifier]))}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Auth" Prelude.<$> auth,
                  (JSON..=) "BuildSpec" Prelude.<$> buildSpec,
                  (JSON..=) "BuildStatusConfig" Prelude.<$> buildStatusConfig,
                  (JSON..=) "GitCloneDepth" Prelude.<$> gitCloneDepth,
                  (JSON..=) "GitSubmodulesConfig" Prelude.<$> gitSubmodulesConfig,
                  (JSON..=) "InsecureSsl" Prelude.<$> insecureSsl,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "ReportBuildStatus" Prelude.<$> reportBuildStatus,
                  (JSON..=) "SourceIdentifier" Prelude.<$> sourceIdentifier])))
instance Property "Auth" SourceProperty where
  type PropertyType "Auth" SourceProperty = SourceAuthProperty
  set newValue SourceProperty {..}
    = SourceProperty {auth = Prelude.pure newValue, ..}
instance Property "BuildSpec" SourceProperty where
  type PropertyType "BuildSpec" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {buildSpec = Prelude.pure newValue, ..}
instance Property "BuildStatusConfig" SourceProperty where
  type PropertyType "BuildStatusConfig" SourceProperty = BuildStatusConfigProperty
  set newValue SourceProperty {..}
    = SourceProperty {buildStatusConfig = Prelude.pure newValue, ..}
instance Property "GitCloneDepth" SourceProperty where
  type PropertyType "GitCloneDepth" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {gitCloneDepth = Prelude.pure newValue, ..}
instance Property "GitSubmodulesConfig" SourceProperty where
  type PropertyType "GitSubmodulesConfig" SourceProperty = GitSubmodulesConfigProperty
  set newValue SourceProperty {..}
    = SourceProperty {gitSubmodulesConfig = Prelude.pure newValue, ..}
instance Property "InsecureSsl" SourceProperty where
  type PropertyType "InsecureSsl" SourceProperty = Value Prelude.Bool
  set newValue SourceProperty {..}
    = SourceProperty {insecureSsl = Prelude.pure newValue, ..}
instance Property "Location" SourceProperty where
  type PropertyType "Location" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {location = Prelude.pure newValue, ..}
instance Property "ReportBuildStatus" SourceProperty where
  type PropertyType "ReportBuildStatus" SourceProperty = Value Prelude.Bool
  set newValue SourceProperty {..}
    = SourceProperty {reportBuildStatus = Prelude.pure newValue, ..}
instance Property "SourceIdentifier" SourceProperty where
  type PropertyType "SourceIdentifier" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceIdentifier = Prelude.pure newValue, ..}
instance Property "Type" SourceProperty where
  type PropertyType "Type" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {type' = newValue, ..}