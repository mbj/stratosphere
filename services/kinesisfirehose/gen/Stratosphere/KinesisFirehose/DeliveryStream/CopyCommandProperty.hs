module Stratosphere.KinesisFirehose.DeliveryStream.CopyCommandProperty (
        CopyCommandProperty(..), mkCopyCommandProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CopyCommandProperty
  = CopyCommandProperty {copyOptions :: (Prelude.Maybe (Value Prelude.Text)),
                         dataTableColumns :: (Prelude.Maybe (Value Prelude.Text)),
                         dataTableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCopyCommandProperty :: Value Prelude.Text -> CopyCommandProperty
mkCopyCommandProperty dataTableName
  = CopyCommandProperty
      {dataTableName = dataTableName, copyOptions = Prelude.Nothing,
       dataTableColumns = Prelude.Nothing}
instance ToResourceProperties CopyCommandProperty where
  toResourceProperties CopyCommandProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.CopyCommand",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataTableName" JSON..= dataTableName]
                           (Prelude.catMaybes
                              [(JSON..=) "CopyOptions" Prelude.<$> copyOptions,
                               (JSON..=) "DataTableColumns" Prelude.<$> dataTableColumns]))}
instance JSON.ToJSON CopyCommandProperty where
  toJSON CopyCommandProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataTableName" JSON..= dataTableName]
              (Prelude.catMaybes
                 [(JSON..=) "CopyOptions" Prelude.<$> copyOptions,
                  (JSON..=) "DataTableColumns" Prelude.<$> dataTableColumns])))
instance Property "CopyOptions" CopyCommandProperty where
  type PropertyType "CopyOptions" CopyCommandProperty = Value Prelude.Text
  set newValue CopyCommandProperty {..}
    = CopyCommandProperty {copyOptions = Prelude.pure newValue, ..}
instance Property "DataTableColumns" CopyCommandProperty where
  type PropertyType "DataTableColumns" CopyCommandProperty = Value Prelude.Text
  set newValue CopyCommandProperty {..}
    = CopyCommandProperty
        {dataTableColumns = Prelude.pure newValue, ..}
instance Property "DataTableName" CopyCommandProperty where
  type PropertyType "DataTableName" CopyCommandProperty = Value Prelude.Text
  set newValue CopyCommandProperty {..}
    = CopyCommandProperty {dataTableName = newValue, ..}