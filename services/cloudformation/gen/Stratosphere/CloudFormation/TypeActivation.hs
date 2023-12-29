module Stratosphere.CloudFormation.TypeActivation (
        module Exports, TypeActivation(..), mkTypeActivation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.TypeActivation.LoggingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TypeActivation
  = TypeActivation {autoUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
                    executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
                    majorVersion :: (Prelude.Maybe (Value Prelude.Text)),
                    publicTypeArn :: (Prelude.Maybe (Value Prelude.Text)),
                    publisherId :: (Prelude.Maybe (Value Prelude.Text)),
                    type' :: (Prelude.Maybe (Value Prelude.Text)),
                    typeName :: (Prelude.Maybe (Value Prelude.Text)),
                    typeNameAlias :: (Prelude.Maybe (Value Prelude.Text)),
                    versionBump :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTypeActivation :: TypeActivation
mkTypeActivation
  = TypeActivation
      {autoUpdate = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       loggingConfig = Prelude.Nothing, majorVersion = Prelude.Nothing,
       publicTypeArn = Prelude.Nothing, publisherId = Prelude.Nothing,
       type' = Prelude.Nothing, typeName = Prelude.Nothing,
       typeNameAlias = Prelude.Nothing, versionBump = Prelude.Nothing}
instance ToResourceProperties TypeActivation where
  toResourceProperties TypeActivation {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::TypeActivation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoUpdate" Prelude.<$> autoUpdate,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig,
                            (JSON..=) "MajorVersion" Prelude.<$> majorVersion,
                            (JSON..=) "PublicTypeArn" Prelude.<$> publicTypeArn,
                            (JSON..=) "PublisherId" Prelude.<$> publisherId,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "TypeName" Prelude.<$> typeName,
                            (JSON..=) "TypeNameAlias" Prelude.<$> typeNameAlias,
                            (JSON..=) "VersionBump" Prelude.<$> versionBump])}
instance JSON.ToJSON TypeActivation where
  toJSON TypeActivation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoUpdate" Prelude.<$> autoUpdate,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig,
               (JSON..=) "MajorVersion" Prelude.<$> majorVersion,
               (JSON..=) "PublicTypeArn" Prelude.<$> publicTypeArn,
               (JSON..=) "PublisherId" Prelude.<$> publisherId,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "TypeName" Prelude.<$> typeName,
               (JSON..=) "TypeNameAlias" Prelude.<$> typeNameAlias,
               (JSON..=) "VersionBump" Prelude.<$> versionBump]))
instance Property "AutoUpdate" TypeActivation where
  type PropertyType "AutoUpdate" TypeActivation = Value Prelude.Bool
  set newValue TypeActivation {..}
    = TypeActivation {autoUpdate = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" TypeActivation where
  type PropertyType "ExecutionRoleArn" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {executionRoleArn = Prelude.pure newValue, ..}
instance Property "LoggingConfig" TypeActivation where
  type PropertyType "LoggingConfig" TypeActivation = LoggingConfigProperty
  set newValue TypeActivation {..}
    = TypeActivation {loggingConfig = Prelude.pure newValue, ..}
instance Property "MajorVersion" TypeActivation where
  type PropertyType "MajorVersion" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {majorVersion = Prelude.pure newValue, ..}
instance Property "PublicTypeArn" TypeActivation where
  type PropertyType "PublicTypeArn" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {publicTypeArn = Prelude.pure newValue, ..}
instance Property "PublisherId" TypeActivation where
  type PropertyType "PublisherId" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {publisherId = Prelude.pure newValue, ..}
instance Property "Type" TypeActivation where
  type PropertyType "Type" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {type' = Prelude.pure newValue, ..}
instance Property "TypeName" TypeActivation where
  type PropertyType "TypeName" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {typeName = Prelude.pure newValue, ..}
instance Property "TypeNameAlias" TypeActivation where
  type PropertyType "TypeNameAlias" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {typeNameAlias = Prelude.pure newValue, ..}
instance Property "VersionBump" TypeActivation where
  type PropertyType "VersionBump" TypeActivation = Value Prelude.Text
  set newValue TypeActivation {..}
    = TypeActivation {versionBump = Prelude.pure newValue, ..}