module Stratosphere.DataBrew.Recipe.SecondaryInputProperty (
        module Exports, SecondaryInputProperty(..),
        mkSecondaryInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.DataCatalogInputDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data SecondaryInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html>
    SecondaryInputProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html#cfn-databrew-recipe-secondaryinput-datacataloginputdefinition>
                            dataCatalogInputDefinition :: (Prelude.Maybe DataCatalogInputDefinitionProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html#cfn-databrew-recipe-secondaryinput-s3inputdefinition>
                            s3InputDefinition :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecondaryInputProperty :: SecondaryInputProperty
mkSecondaryInputProperty
  = SecondaryInputProperty
      {haddock_workaround_ = (),
       dataCatalogInputDefinition = Prelude.Nothing,
       s3InputDefinition = Prelude.Nothing}
instance ToResourceProperties SecondaryInputProperty where
  toResourceProperties SecondaryInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.SecondaryInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataCatalogInputDefinition"
                              Prelude.<$> dataCatalogInputDefinition,
                            (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition])}
instance JSON.ToJSON SecondaryInputProperty where
  toJSON SecondaryInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataCatalogInputDefinition"
                 Prelude.<$> dataCatalogInputDefinition,
               (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition]))
instance Property "DataCatalogInputDefinition" SecondaryInputProperty where
  type PropertyType "DataCatalogInputDefinition" SecondaryInputProperty = DataCatalogInputDefinitionProperty
  set newValue SecondaryInputProperty {..}
    = SecondaryInputProperty
        {dataCatalogInputDefinition = Prelude.pure newValue, ..}
instance Property "S3InputDefinition" SecondaryInputProperty where
  type PropertyType "S3InputDefinition" SecondaryInputProperty = S3LocationProperty
  set newValue SecondaryInputProperty {..}
    = SecondaryInputProperty
        {s3InputDefinition = Prelude.pure newValue, ..}