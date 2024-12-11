module Stratosphere.SageMaker.Model.AdditionalModelDataSourceProperty (
        module Exports, AdditionalModelDataSourceProperty(..),
        mkAdditionalModelDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.S3DataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalModelDataSourceProperty
  = AdditionalModelDataSourceProperty {channelName :: (Value Prelude.Text),
                                       s3DataSource :: S3DataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalModelDataSourceProperty ::
  Value Prelude.Text
  -> S3DataSourceProperty -> AdditionalModelDataSourceProperty
mkAdditionalModelDataSourceProperty channelName s3DataSource
  = AdditionalModelDataSourceProperty
      {channelName = channelName, s3DataSource = s3DataSource}
instance ToResourceProperties AdditionalModelDataSourceProperty where
  toResourceProperties AdditionalModelDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.AdditionalModelDataSource",
         supportsTags = Prelude.False,
         properties = ["ChannelName" JSON..= channelName,
                       "S3DataSource" JSON..= s3DataSource]}
instance JSON.ToJSON AdditionalModelDataSourceProperty where
  toJSON AdditionalModelDataSourceProperty {..}
    = JSON.object
        ["ChannelName" JSON..= channelName,
         "S3DataSource" JSON..= s3DataSource]
instance Property "ChannelName" AdditionalModelDataSourceProperty where
  type PropertyType "ChannelName" AdditionalModelDataSourceProperty = Value Prelude.Text
  set newValue AdditionalModelDataSourceProperty {..}
    = AdditionalModelDataSourceProperty {channelName = newValue, ..}
instance Property "S3DataSource" AdditionalModelDataSourceProperty where
  type PropertyType "S3DataSource" AdditionalModelDataSourceProperty = S3DataSourceProperty
  set newValue AdditionalModelDataSourceProperty {..}
    = AdditionalModelDataSourceProperty {s3DataSource = newValue, ..}