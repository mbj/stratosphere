module Stratosphere.Cassandra.Table.ClusteringKeyColumnProperty (
        module Exports, ClusteringKeyColumnProperty(..),
        mkClusteringKeyColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusteringKeyColumnProperty
  = ClusteringKeyColumnProperty {column :: ColumnProperty,
                                 orderBy :: (Prelude.Maybe (Value Prelude.Text))}
mkClusteringKeyColumnProperty ::
  ColumnProperty -> ClusteringKeyColumnProperty
mkClusteringKeyColumnProperty column
  = ClusteringKeyColumnProperty
      {column = column, orderBy = Prelude.Nothing}
instance ToResourceProperties ClusteringKeyColumnProperty where
  toResourceProperties ClusteringKeyColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.ClusteringKeyColumn",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes [(JSON..=) "OrderBy" Prelude.<$> orderBy]))}
instance JSON.ToJSON ClusteringKeyColumnProperty where
  toJSON ClusteringKeyColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes [(JSON..=) "OrderBy" Prelude.<$> orderBy])))
instance Property "Column" ClusteringKeyColumnProperty where
  type PropertyType "Column" ClusteringKeyColumnProperty = ColumnProperty
  set newValue ClusteringKeyColumnProperty {..}
    = ClusteringKeyColumnProperty {column = newValue, ..}
instance Property "OrderBy" ClusteringKeyColumnProperty where
  type PropertyType "OrderBy" ClusteringKeyColumnProperty = Value Prelude.Text
  set newValue ClusteringKeyColumnProperty {..}
    = ClusteringKeyColumnProperty {orderBy = Prelude.pure newValue, ..}