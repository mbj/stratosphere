module Stratosphere.DataBrew.Recipe.DataCatalogInputDefinitionProperty (
        module Exports, DataCatalogInputDefinitionProperty(..),
        mkDataCatalogInputDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCatalogInputDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-datacataloginputdefinition.html>
    DataCatalogInputDefinitionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-datacataloginputdefinition.html#cfn-databrew-recipe-datacataloginputdefinition-catalogid>
                                        catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-datacataloginputdefinition.html#cfn-databrew-recipe-datacataloginputdefinition-databasename>
                                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-datacataloginputdefinition.html#cfn-databrew-recipe-datacataloginputdefinition-tablename>
                                        tableName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-datacataloginputdefinition.html#cfn-databrew-recipe-datacataloginputdefinition-tempdirectory>
                                        tempDirectory :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalogInputDefinitionProperty ::
  DataCatalogInputDefinitionProperty
mkDataCatalogInputDefinitionProperty
  = DataCatalogInputDefinitionProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       databaseName = Prelude.Nothing, tableName = Prelude.Nothing,
       tempDirectory = Prelude.Nothing}
instance ToResourceProperties DataCatalogInputDefinitionProperty where
  toResourceProperties DataCatalogInputDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.DataCatalogInputDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "TableName" Prelude.<$> tableName,
                            (JSON..=) "TempDirectory" Prelude.<$> tempDirectory])}
instance JSON.ToJSON DataCatalogInputDefinitionProperty where
  toJSON DataCatalogInputDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "TableName" Prelude.<$> tableName,
               (JSON..=) "TempDirectory" Prelude.<$> tempDirectory]))
instance Property "CatalogId" DataCatalogInputDefinitionProperty where
  type PropertyType "CatalogId" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DataCatalogInputDefinitionProperty where
  type PropertyType "DatabaseName" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "TableName" DataCatalogInputDefinitionProperty where
  type PropertyType "TableName" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {tableName = Prelude.pure newValue, ..}
instance Property "TempDirectory" DataCatalogInputDefinitionProperty where
  type PropertyType "TempDirectory" DataCatalogInputDefinitionProperty = S3LocationProperty
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {tempDirectory = Prelude.pure newValue, ..}