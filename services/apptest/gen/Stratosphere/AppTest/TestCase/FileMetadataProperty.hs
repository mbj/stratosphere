module Stratosphere.AppTest.TestCase.FileMetadataProperty (
        module Exports, FileMetadataProperty(..), mkFileMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.DataSetProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.DatabaseCDCProperty as Exports
import Stratosphere.ResourceProperties
data FileMetadataProperty
  = FileMetadataProperty {dataSets :: (Prelude.Maybe [DataSetProperty]),
                          databaseCDC :: (Prelude.Maybe DatabaseCDCProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileMetadataProperty :: FileMetadataProperty
mkFileMetadataProperty
  = FileMetadataProperty
      {dataSets = Prelude.Nothing, databaseCDC = Prelude.Nothing}
instance ToResourceProperties FileMetadataProperty where
  toResourceProperties FileMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.FileMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataSets" Prelude.<$> dataSets,
                            (JSON..=) "DatabaseCDC" Prelude.<$> databaseCDC])}
instance JSON.ToJSON FileMetadataProperty where
  toJSON FileMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataSets" Prelude.<$> dataSets,
               (JSON..=) "DatabaseCDC" Prelude.<$> databaseCDC]))
instance Property "DataSets" FileMetadataProperty where
  type PropertyType "DataSets" FileMetadataProperty = [DataSetProperty]
  set newValue FileMetadataProperty {..}
    = FileMetadataProperty {dataSets = Prelude.pure newValue, ..}
instance Property "DatabaseCDC" FileMetadataProperty where
  type PropertyType "DatabaseCDC" FileMetadataProperty = DatabaseCDCProperty
  set newValue FileMetadataProperty {..}
    = FileMetadataProperty {databaseCDC = Prelude.pure newValue, ..}