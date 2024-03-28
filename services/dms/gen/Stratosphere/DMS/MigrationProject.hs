module Stratosphere.DMS.MigrationProject (
        module Exports, MigrationProject(..), mkMigrationProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.MigrationProject.DataProviderDescriptorProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.MigrationProject.SchemaConversionApplicationAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MigrationProject
  = MigrationProject {description :: (Prelude.Maybe (Value Prelude.Text)),
                      instanceProfileArn :: (Prelude.Maybe (Value Prelude.Text)),
                      instanceProfileIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                      instanceProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                      migrationProjectIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                      migrationProjectName :: (Prelude.Maybe (Value Prelude.Text)),
                      schemaConversionApplicationAttributes :: (Prelude.Maybe SchemaConversionApplicationAttributesProperty),
                      sourceDataProviderDescriptors :: (Prelude.Maybe [DataProviderDescriptorProperty]),
                      tags :: (Prelude.Maybe [Tag]),
                      targetDataProviderDescriptors :: (Prelude.Maybe [DataProviderDescriptorProperty]),
                      transformationRules :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMigrationProject :: MigrationProject
mkMigrationProject
  = MigrationProject
      {description = Prelude.Nothing,
       instanceProfileArn = Prelude.Nothing,
       instanceProfileIdentifier = Prelude.Nothing,
       instanceProfileName = Prelude.Nothing,
       migrationProjectIdentifier = Prelude.Nothing,
       migrationProjectName = Prelude.Nothing,
       schemaConversionApplicationAttributes = Prelude.Nothing,
       sourceDataProviderDescriptors = Prelude.Nothing,
       tags = Prelude.Nothing,
       targetDataProviderDescriptors = Prelude.Nothing,
       transformationRules = Prelude.Nothing}
instance ToResourceProperties MigrationProject where
  toResourceProperties MigrationProject {..}
    = ResourceProperties
        {awsType = "AWS::DMS::MigrationProject",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "InstanceProfileArn" Prelude.<$> instanceProfileArn,
                            (JSON..=) "InstanceProfileIdentifier"
                              Prelude.<$> instanceProfileIdentifier,
                            (JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                            (JSON..=) "MigrationProjectIdentifier"
                              Prelude.<$> migrationProjectIdentifier,
                            (JSON..=) "MigrationProjectName" Prelude.<$> migrationProjectName,
                            (JSON..=) "SchemaConversionApplicationAttributes"
                              Prelude.<$> schemaConversionApplicationAttributes,
                            (JSON..=) "SourceDataProviderDescriptors"
                              Prelude.<$> sourceDataProviderDescriptors,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TargetDataProviderDescriptors"
                              Prelude.<$> targetDataProviderDescriptors,
                            (JSON..=) "TransformationRules" Prelude.<$> transformationRules])}
instance JSON.ToJSON MigrationProject where
  toJSON MigrationProject {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "InstanceProfileArn" Prelude.<$> instanceProfileArn,
               (JSON..=) "InstanceProfileIdentifier"
                 Prelude.<$> instanceProfileIdentifier,
               (JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
               (JSON..=) "MigrationProjectIdentifier"
                 Prelude.<$> migrationProjectIdentifier,
               (JSON..=) "MigrationProjectName" Prelude.<$> migrationProjectName,
               (JSON..=) "SchemaConversionApplicationAttributes"
                 Prelude.<$> schemaConversionApplicationAttributes,
               (JSON..=) "SourceDataProviderDescriptors"
                 Prelude.<$> sourceDataProviderDescriptors,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TargetDataProviderDescriptors"
                 Prelude.<$> targetDataProviderDescriptors,
               (JSON..=) "TransformationRules" Prelude.<$> transformationRules]))
instance Property "Description" MigrationProject where
  type PropertyType "Description" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject {description = Prelude.pure newValue, ..}
instance Property "InstanceProfileArn" MigrationProject where
  type PropertyType "InstanceProfileArn" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject {instanceProfileArn = Prelude.pure newValue, ..}
instance Property "InstanceProfileIdentifier" MigrationProject where
  type PropertyType "InstanceProfileIdentifier" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject
        {instanceProfileIdentifier = Prelude.pure newValue, ..}
instance Property "InstanceProfileName" MigrationProject where
  type PropertyType "InstanceProfileName" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject
        {instanceProfileName = Prelude.pure newValue, ..}
instance Property "MigrationProjectIdentifier" MigrationProject where
  type PropertyType "MigrationProjectIdentifier" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject
        {migrationProjectIdentifier = Prelude.pure newValue, ..}
instance Property "MigrationProjectName" MigrationProject where
  type PropertyType "MigrationProjectName" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject
        {migrationProjectName = Prelude.pure newValue, ..}
instance Property "SchemaConversionApplicationAttributes" MigrationProject where
  type PropertyType "SchemaConversionApplicationAttributes" MigrationProject = SchemaConversionApplicationAttributesProperty
  set newValue MigrationProject {..}
    = MigrationProject
        {schemaConversionApplicationAttributes = Prelude.pure newValue, ..}
instance Property "SourceDataProviderDescriptors" MigrationProject where
  type PropertyType "SourceDataProviderDescriptors" MigrationProject = [DataProviderDescriptorProperty]
  set newValue MigrationProject {..}
    = MigrationProject
        {sourceDataProviderDescriptors = Prelude.pure newValue, ..}
instance Property "Tags" MigrationProject where
  type PropertyType "Tags" MigrationProject = [Tag]
  set newValue MigrationProject {..}
    = MigrationProject {tags = Prelude.pure newValue, ..}
instance Property "TargetDataProviderDescriptors" MigrationProject where
  type PropertyType "TargetDataProviderDescriptors" MigrationProject = [DataProviderDescriptorProperty]
  set newValue MigrationProject {..}
    = MigrationProject
        {targetDataProviderDescriptors = Prelude.pure newValue, ..}
instance Property "TransformationRules" MigrationProject where
  type PropertyType "TransformationRules" MigrationProject = Value Prelude.Text
  set newValue MigrationProject {..}
    = MigrationProject
        {transformationRules = Prelude.pure newValue, ..}