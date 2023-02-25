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
  = SourceProperty {auth :: (Prelude.Maybe SourceAuthProperty),
                    buildSpec :: (Prelude.Maybe (Value Prelude.Text)),
                    buildStatusConfig :: (Prelude.Maybe BuildStatusConfigProperty),
                    gitCloneDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                    gitSubmodulesConfig :: (Prelude.Maybe GitSubmodulesConfigProperty),
                    insecureSsl :: (Prelude.Maybe (Value Prelude.Bool)),
                    location :: (Prelude.Maybe (Value Prelude.Text)),
                    reportBuildStatus :: (Prelude.Maybe (Value Prelude.Bool)),
                    sourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                    type' :: (Value Prelude.Text)}
mkSourceProperty :: Value Prelude.Text -> SourceProperty
mkSourceProperty type'
  = SourceProperty
      {type' = type', auth = Prelude.Nothing,
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