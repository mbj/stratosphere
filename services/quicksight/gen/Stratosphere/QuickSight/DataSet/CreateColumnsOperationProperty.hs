module Stratosphere.QuickSight.DataSet.CreateColumnsOperationProperty (
        module Exports, CreateColumnsOperationProperty(..),
        mkCreateColumnsOperationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.CalculatedColumnProperty as Exports
import Stratosphere.ResourceProperties
data CreateColumnsOperationProperty
  = CreateColumnsOperationProperty {columns :: [CalculatedColumnProperty]}
mkCreateColumnsOperationProperty ::
  [CalculatedColumnProperty] -> CreateColumnsOperationProperty
mkCreateColumnsOperationProperty columns
  = CreateColumnsOperationProperty {columns = columns}
instance ToResourceProperties CreateColumnsOperationProperty where
  toResourceProperties CreateColumnsOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CreateColumnsOperation",
         properties = ["Columns" JSON..= columns]}
instance JSON.ToJSON CreateColumnsOperationProperty where
  toJSON CreateColumnsOperationProperty {..}
    = JSON.object ["Columns" JSON..= columns]
instance Property "Columns" CreateColumnsOperationProperty where
  type PropertyType "Columns" CreateColumnsOperationProperty = [CalculatedColumnProperty]
  set newValue CreateColumnsOperationProperty {}
    = CreateColumnsOperationProperty {columns = newValue, ..}