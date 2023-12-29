module Stratosphere.Glue.Partition.ColumnProperty (
        ColumnProperty(..), mkColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnProperty
  = ColumnProperty {comment :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Value Prelude.Text),
                    type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnProperty :: Value Prelude.Text -> ColumnProperty
mkColumnProperty name
  = ColumnProperty
      {name = name, comment = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ColumnProperty where
  toResourceProperties ColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.Column",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Comment" Prelude.<$> comment,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ColumnProperty where
  toJSON ColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Comment" Prelude.<$> comment,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Comment" ColumnProperty where
  type PropertyType "Comment" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {comment = Prelude.pure newValue, ..}
instance Property "Name" ColumnProperty where
  type PropertyType "Name" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {name = newValue, ..}
instance Property "Type" ColumnProperty where
  type PropertyType "Type" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {type' = Prelude.pure newValue, ..}