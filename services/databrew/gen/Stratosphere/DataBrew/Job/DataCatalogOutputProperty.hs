module Stratosphere.DataBrew.Job.DataCatalogOutputProperty (
        module Exports, DataCatalogOutputProperty(..),
        mkDataCatalogOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.DatabaseTableOutputOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.S3TableOutputOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCatalogOutputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html>
    DataCatalogOutputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-catalogid>
                               catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-databasename>
                               databaseName :: (Value Prelude.Text),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-databaseoptions>
                               databaseOptions :: (Prelude.Maybe DatabaseTableOutputOptionsProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-overwrite>
                               overwrite :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-s3options>
                               s3Options :: (Prelude.Maybe S3TableOutputOptionsProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-datacatalogoutput.html#cfn-databrew-job-datacatalogoutput-tablename>
                               tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalogOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataCatalogOutputProperty
mkDataCatalogOutputProperty databaseName tableName
  = DataCatalogOutputProperty
      {databaseName = databaseName, tableName = tableName,
       catalogId = Prelude.Nothing, databaseOptions = Prelude.Nothing,
       overwrite = Prelude.Nothing, s3Options = Prelude.Nothing}
instance ToResourceProperties DataCatalogOutputProperty where
  toResourceProperties DataCatalogOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.DataCatalogOutput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                               (JSON..=) "DatabaseOptions" Prelude.<$> databaseOptions,
                               (JSON..=) "Overwrite" Prelude.<$> overwrite,
                               (JSON..=) "S3Options" Prelude.<$> s3Options]))}
instance JSON.ToJSON DataCatalogOutputProperty where
  toJSON DataCatalogOutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                  (JSON..=) "DatabaseOptions" Prelude.<$> databaseOptions,
                  (JSON..=) "Overwrite" Prelude.<$> overwrite,
                  (JSON..=) "S3Options" Prelude.<$> s3Options])))
instance Property "CatalogId" DataCatalogOutputProperty where
  type PropertyType "CatalogId" DataCatalogOutputProperty = Value Prelude.Text
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DataCatalogOutputProperty where
  type PropertyType "DatabaseName" DataCatalogOutputProperty = Value Prelude.Text
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty {databaseName = newValue, ..}
instance Property "DatabaseOptions" DataCatalogOutputProperty where
  type PropertyType "DatabaseOptions" DataCatalogOutputProperty = DatabaseTableOutputOptionsProperty
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty
        {databaseOptions = Prelude.pure newValue, ..}
instance Property "Overwrite" DataCatalogOutputProperty where
  type PropertyType "Overwrite" DataCatalogOutputProperty = Value Prelude.Bool
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty {overwrite = Prelude.pure newValue, ..}
instance Property "S3Options" DataCatalogOutputProperty where
  type PropertyType "S3Options" DataCatalogOutputProperty = S3TableOutputOptionsProperty
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty {s3Options = Prelude.pure newValue, ..}
instance Property "TableName" DataCatalogOutputProperty where
  type PropertyType "TableName" DataCatalogOutputProperty = Value Prelude.Text
  set newValue DataCatalogOutputProperty {..}
    = DataCatalogOutputProperty {tableName = newValue, ..}