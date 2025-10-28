module Stratosphere.DataBrew.Dataset.PathOptionsProperty (
        module Exports, PathOptionsProperty(..), mkPathOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.FilesLimitProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.FilterExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.PathParameterProperty as Exports
import Stratosphere.ResourceProperties
data PathOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html>
    PathOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-fileslimit>
                         filesLimit :: (Prelude.Maybe FilesLimitProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-lastmodifieddatecondition>
                         lastModifiedDateCondition :: (Prelude.Maybe FilterExpressionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-parameters>
                         parameters :: (Prelude.Maybe [PathParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathOptionsProperty :: PathOptionsProperty
mkPathOptionsProperty
  = PathOptionsProperty
      {haddock_workaround_ = (), filesLimit = Prelude.Nothing,
       lastModifiedDateCondition = Prelude.Nothing,
       parameters = Prelude.Nothing}
instance ToResourceProperties PathOptionsProperty where
  toResourceProperties PathOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.PathOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilesLimit" Prelude.<$> filesLimit,
                            (JSON..=) "LastModifiedDateCondition"
                              Prelude.<$> lastModifiedDateCondition,
                            (JSON..=) "Parameters" Prelude.<$> parameters])}
instance JSON.ToJSON PathOptionsProperty where
  toJSON PathOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilesLimit" Prelude.<$> filesLimit,
               (JSON..=) "LastModifiedDateCondition"
                 Prelude.<$> lastModifiedDateCondition,
               (JSON..=) "Parameters" Prelude.<$> parameters]))
instance Property "FilesLimit" PathOptionsProperty where
  type PropertyType "FilesLimit" PathOptionsProperty = FilesLimitProperty
  set newValue PathOptionsProperty {..}
    = PathOptionsProperty {filesLimit = Prelude.pure newValue, ..}
instance Property "LastModifiedDateCondition" PathOptionsProperty where
  type PropertyType "LastModifiedDateCondition" PathOptionsProperty = FilterExpressionProperty
  set newValue PathOptionsProperty {..}
    = PathOptionsProperty
        {lastModifiedDateCondition = Prelude.pure newValue, ..}
instance Property "Parameters" PathOptionsProperty where
  type PropertyType "Parameters" PathOptionsProperty = [PathParameterProperty]
  set newValue PathOptionsProperty {..}
    = PathOptionsProperty {parameters = Prelude.pure newValue, ..}