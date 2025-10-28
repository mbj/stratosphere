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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathparameter.html>
    PathParameterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathparameter.html#cfn-databrew-dataset-pathparameter-datasetparameter>
                           datasetParameter :: DatasetParameterProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathparameter.html#cfn-databrew-dataset-pathparameter-pathparametername>
                           pathParameterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathParameterProperty ::
  DatasetParameterProperty
  -> Value Prelude.Text -> PathParameterProperty
mkPathParameterProperty datasetParameter pathParameterName
  = PathParameterProperty
      {haddock_workaround_ = (), datasetParameter = datasetParameter,
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