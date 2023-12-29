module Stratosphere.DataBrew.Dataset.FilesLimitProperty (
        FilesLimitProperty(..), mkFilesLimitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilesLimitProperty
  = FilesLimitProperty {maxFiles :: (Value Prelude.Integer),
                        order :: (Prelude.Maybe (Value Prelude.Text)),
                        orderedBy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilesLimitProperty :: Value Prelude.Integer -> FilesLimitProperty
mkFilesLimitProperty maxFiles
  = FilesLimitProperty
      {maxFiles = maxFiles, order = Prelude.Nothing,
       orderedBy = Prelude.Nothing}
instance ToResourceProperties FilesLimitProperty where
  toResourceProperties FilesLimitProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.FilesLimit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxFiles" JSON..= maxFiles]
                           (Prelude.catMaybes
                              [(JSON..=) "Order" Prelude.<$> order,
                               (JSON..=) "OrderedBy" Prelude.<$> orderedBy]))}
instance JSON.ToJSON FilesLimitProperty where
  toJSON FilesLimitProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxFiles" JSON..= maxFiles]
              (Prelude.catMaybes
                 [(JSON..=) "Order" Prelude.<$> order,
                  (JSON..=) "OrderedBy" Prelude.<$> orderedBy])))
instance Property "MaxFiles" FilesLimitProperty where
  type PropertyType "MaxFiles" FilesLimitProperty = Value Prelude.Integer
  set newValue FilesLimitProperty {..}
    = FilesLimitProperty {maxFiles = newValue, ..}
instance Property "Order" FilesLimitProperty where
  type PropertyType "Order" FilesLimitProperty = Value Prelude.Text
  set newValue FilesLimitProperty {..}
    = FilesLimitProperty {order = Prelude.pure newValue, ..}
instance Property "OrderedBy" FilesLimitProperty where
  type PropertyType "OrderedBy" FilesLimitProperty = Value Prelude.Text
  set newValue FilesLimitProperty {..}
    = FilesLimitProperty {orderedBy = Prelude.pure newValue, ..}