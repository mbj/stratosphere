module Stratosphere.DataZone.DataSource.RedshiftStorageProperty (
        module Exports, RedshiftStorageProperty(..),
        mkRedshiftStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftClusterStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RedshiftServerlessStorageProperty as Exports
import Stratosphere.ResourceProperties
data RedshiftStorageProperty
  = RedshiftStorageProperty {redshiftClusterSource :: (Prelude.Maybe RedshiftClusterStorageProperty),
                             redshiftServerlessSource :: (Prelude.Maybe RedshiftServerlessStorageProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftStorageProperty :: RedshiftStorageProperty
mkRedshiftStorageProperty
  = RedshiftStorageProperty
      {redshiftClusterSource = Prelude.Nothing,
       redshiftServerlessSource = Prelude.Nothing}
instance ToResourceProperties RedshiftStorageProperty where
  toResourceProperties RedshiftStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RedshiftStorage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RedshiftClusterSource"
                              Prelude.<$> redshiftClusterSource,
                            (JSON..=) "RedshiftServerlessSource"
                              Prelude.<$> redshiftServerlessSource])}
instance JSON.ToJSON RedshiftStorageProperty where
  toJSON RedshiftStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RedshiftClusterSource"
                 Prelude.<$> redshiftClusterSource,
               (JSON..=) "RedshiftServerlessSource"
                 Prelude.<$> redshiftServerlessSource]))
instance Property "RedshiftClusterSource" RedshiftStorageProperty where
  type PropertyType "RedshiftClusterSource" RedshiftStorageProperty = RedshiftClusterStorageProperty
  set newValue RedshiftStorageProperty {..}
    = RedshiftStorageProperty
        {redshiftClusterSource = Prelude.pure newValue, ..}
instance Property "RedshiftServerlessSource" RedshiftStorageProperty where
  type PropertyType "RedshiftServerlessSource" RedshiftStorageProperty = RedshiftServerlessStorageProperty
  set newValue RedshiftStorageProperty {..}
    = RedshiftStorageProperty
        {redshiftServerlessSource = Prelude.pure newValue, ..}