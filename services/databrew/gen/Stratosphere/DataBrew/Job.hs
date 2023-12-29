module Stratosphere.DataBrew.Job (
        module Exports, Job(..), mkJob
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.DataCatalogOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.DatabaseOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.JobSampleProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.OutputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.OutputLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.ProfileConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.RecipeProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.ValidationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Job
  = Job {dataCatalogOutputs :: (Prelude.Maybe [DataCatalogOutputProperty]),
         databaseOutputs :: (Prelude.Maybe [DatabaseOutputProperty]),
         datasetName :: (Prelude.Maybe (Value Prelude.Text)),
         encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
         encryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
         jobSample :: (Prelude.Maybe JobSampleProperty),
         logSubscription :: (Prelude.Maybe (Value Prelude.Text)),
         maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
         maxRetries :: (Prelude.Maybe (Value Prelude.Integer)),
         name :: (Value Prelude.Text),
         outputLocation :: (Prelude.Maybe OutputLocationProperty),
         outputs :: (Prelude.Maybe [OutputProperty]),
         profileConfiguration :: (Prelude.Maybe ProfileConfigurationProperty),
         projectName :: (Prelude.Maybe (Value Prelude.Text)),
         recipe :: (Prelude.Maybe RecipeProperty),
         roleArn :: (Value Prelude.Text),
         tags :: (Prelude.Maybe [Tag]),
         timeout :: (Prelude.Maybe (Value Prelude.Integer)),
         type' :: (Value Prelude.Text),
         validationConfigurations :: (Prelude.Maybe [ValidationConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJob ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Job
mkJob name roleArn type'
  = Job
      {name = name, roleArn = roleArn, type' = type',
       dataCatalogOutputs = Prelude.Nothing,
       databaseOutputs = Prelude.Nothing, datasetName = Prelude.Nothing,
       encryptionKeyArn = Prelude.Nothing,
       encryptionMode = Prelude.Nothing, jobSample = Prelude.Nothing,
       logSubscription = Prelude.Nothing, maxCapacity = Prelude.Nothing,
       maxRetries = Prelude.Nothing, outputLocation = Prelude.Nothing,
       outputs = Prelude.Nothing, profileConfiguration = Prelude.Nothing,
       projectName = Prelude.Nothing, recipe = Prelude.Nothing,
       tags = Prelude.Nothing, timeout = Prelude.Nothing,
       validationConfigurations = Prelude.Nothing}
instance ToResourceProperties Job where
  toResourceProperties Job {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DataCatalogOutputs" Prelude.<$> dataCatalogOutputs,
                               (JSON..=) "DatabaseOutputs" Prelude.<$> databaseOutputs,
                               (JSON..=) "DatasetName" Prelude.<$> datasetName,
                               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                               (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
                               (JSON..=) "JobSample" Prelude.<$> jobSample,
                               (JSON..=) "LogSubscription" Prelude.<$> logSubscription,
                               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                               (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                               (JSON..=) "OutputLocation" Prelude.<$> outputLocation,
                               (JSON..=) "Outputs" Prelude.<$> outputs,
                               (JSON..=) "ProfileConfiguration" Prelude.<$> profileConfiguration,
                               (JSON..=) "ProjectName" Prelude.<$> projectName,
                               (JSON..=) "Recipe" Prelude.<$> recipe,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Timeout" Prelude.<$> timeout,
                               (JSON..=) "ValidationConfigurations"
                                 Prelude.<$> validationConfigurations]))}
instance JSON.ToJSON Job where
  toJSON Job {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DataCatalogOutputs" Prelude.<$> dataCatalogOutputs,
                  (JSON..=) "DatabaseOutputs" Prelude.<$> databaseOutputs,
                  (JSON..=) "DatasetName" Prelude.<$> datasetName,
                  (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                  (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
                  (JSON..=) "JobSample" Prelude.<$> jobSample,
                  (JSON..=) "LogSubscription" Prelude.<$> logSubscription,
                  (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                  (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                  (JSON..=) "OutputLocation" Prelude.<$> outputLocation,
                  (JSON..=) "Outputs" Prelude.<$> outputs,
                  (JSON..=) "ProfileConfiguration" Prelude.<$> profileConfiguration,
                  (JSON..=) "ProjectName" Prelude.<$> projectName,
                  (JSON..=) "Recipe" Prelude.<$> recipe,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Timeout" Prelude.<$> timeout,
                  (JSON..=) "ValidationConfigurations"
                    Prelude.<$> validationConfigurations])))
instance Property "DataCatalogOutputs" Job where
  type PropertyType "DataCatalogOutputs" Job = [DataCatalogOutputProperty]
  set newValue Job {..}
    = Job {dataCatalogOutputs = Prelude.pure newValue, ..}
instance Property "DatabaseOutputs" Job where
  type PropertyType "DatabaseOutputs" Job = [DatabaseOutputProperty]
  set newValue Job {..}
    = Job {databaseOutputs = Prelude.pure newValue, ..}
instance Property "DatasetName" Job where
  type PropertyType "DatasetName" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {datasetName = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" Job where
  type PropertyType "EncryptionKeyArn" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "EncryptionMode" Job where
  type PropertyType "EncryptionMode" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {encryptionMode = Prelude.pure newValue, ..}
instance Property "JobSample" Job where
  type PropertyType "JobSample" Job = JobSampleProperty
  set newValue Job {..} = Job {jobSample = Prelude.pure newValue, ..}
instance Property "LogSubscription" Job where
  type PropertyType "LogSubscription" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {logSubscription = Prelude.pure newValue, ..}
instance Property "MaxCapacity" Job where
  type PropertyType "MaxCapacity" Job = Value Prelude.Integer
  set newValue Job {..}
    = Job {maxCapacity = Prelude.pure newValue, ..}
instance Property "MaxRetries" Job where
  type PropertyType "MaxRetries" Job = Value Prelude.Integer
  set newValue Job {..}
    = Job {maxRetries = Prelude.pure newValue, ..}
instance Property "Name" Job where
  type PropertyType "Name" Job = Value Prelude.Text
  set newValue Job {..} = Job {name = newValue, ..}
instance Property "OutputLocation" Job where
  type PropertyType "OutputLocation" Job = OutputLocationProperty
  set newValue Job {..}
    = Job {outputLocation = Prelude.pure newValue, ..}
instance Property "Outputs" Job where
  type PropertyType "Outputs" Job = [OutputProperty]
  set newValue Job {..} = Job {outputs = Prelude.pure newValue, ..}
instance Property "ProfileConfiguration" Job where
  type PropertyType "ProfileConfiguration" Job = ProfileConfigurationProperty
  set newValue Job {..}
    = Job {profileConfiguration = Prelude.pure newValue, ..}
instance Property "ProjectName" Job where
  type PropertyType "ProjectName" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {projectName = Prelude.pure newValue, ..}
instance Property "Recipe" Job where
  type PropertyType "Recipe" Job = RecipeProperty
  set newValue Job {..} = Job {recipe = Prelude.pure newValue, ..}
instance Property "RoleArn" Job where
  type PropertyType "RoleArn" Job = Value Prelude.Text
  set newValue Job {..} = Job {roleArn = newValue, ..}
instance Property "Tags" Job where
  type PropertyType "Tags" Job = [Tag]
  set newValue Job {..} = Job {tags = Prelude.pure newValue, ..}
instance Property "Timeout" Job where
  type PropertyType "Timeout" Job = Value Prelude.Integer
  set newValue Job {..} = Job {timeout = Prelude.pure newValue, ..}
instance Property "Type" Job where
  type PropertyType "Type" Job = Value Prelude.Text
  set newValue Job {..} = Job {type' = newValue, ..}
instance Property "ValidationConfigurations" Job where
  type PropertyType "ValidationConfigurations" Job = [ValidationConfigurationProperty]
  set newValue Job {..}
    = Job {validationConfigurations = Prelude.pure newValue, ..}