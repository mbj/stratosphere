module Stratosphere.DataBrew.Dataset.PathParameterProperty (
        module Exports, PathParameterProperty(..), mkPathParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.DatasetParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathParameterProperty
  = PathParameterProperty {datasetParameter :: DatasetParameterProperty,
                           pathParameterName :: (Value Prelude.Text)}
mkPathParameterProperty ::
  DatasetParameterProperty
  -> Value Prelude.Text -> PathParameterProperty
mkPathParameterProperty datasetParameter pathParameterName
  = PathParameterProperty
      {datasetParameter = datasetParameter,
       pathParameterName = pathParameterName}
instance ToResourceProperties PathParameterProperty where
  toResourceProperties PathParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.PathParameter",
         supportsTags = Prelude.False,
         properties = ["DatasetParameter" JSON..= datasetParameter,
                       "PathParameterName" JSON..= pathParameterName]}
instance JSON.ToJSON PathParameterProperty where
  toJSON PathParameterProperty {..}
    = JSON.object
        ["DatasetParameter" JSON..= datasetParameter,
         "PathParameterName" JSON..= pathParameterName]
instance Property "DatasetParameter" PathParameterProperty where
  type PropertyType "DatasetParameter" PathParameterProperty = DatasetParameterProperty
  set newValue PathParameterProperty {..}
    = PathParameterProperty {datasetParameter = newValue, ..}
instance Property "PathParameterName" PathParameterProperty where
  type PropertyType "PathParameterName" PathParameterProperty = Value Prelude.Text
  set newValue PathParameterProperty {..}
    = PathParameterProperty {pathParameterName = newValue, ..}