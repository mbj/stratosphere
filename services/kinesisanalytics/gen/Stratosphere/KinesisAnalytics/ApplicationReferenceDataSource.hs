module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource (
        module Exports, ApplicationReferenceDataSource(..),
        mkApplicationReferenceDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceDataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationReferenceDataSource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html>
    ApplicationReferenceDataSource {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-applicationname>
                                    applicationName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource>
                                    referenceDataSource :: ReferenceDataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationReferenceDataSource ::
  Value Prelude.Text
  -> ReferenceDataSourceProperty -> ApplicationReferenceDataSource
mkApplicationReferenceDataSource
  applicationName
  referenceDataSource
  = ApplicationReferenceDataSource
      {haddock_workaround_ = (), applicationName = applicationName,
       referenceDataSource = referenceDataSource}
instance ToResourceProperties ApplicationReferenceDataSource where
  toResourceProperties ApplicationReferenceDataSource {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource",
         supportsTags = Prelude.False,
         properties = ["ApplicationName" JSON..= applicationName,
                       "ReferenceDataSource" JSON..= referenceDataSource]}
instance JSON.ToJSON ApplicationReferenceDataSource where
  toJSON ApplicationReferenceDataSource {..}
    = JSON.object
        ["ApplicationName" JSON..= applicationName,
         "ReferenceDataSource" JSON..= referenceDataSource]
instance Property "ApplicationName" ApplicationReferenceDataSource where
  type PropertyType "ApplicationName" ApplicationReferenceDataSource = Value Prelude.Text
  set newValue ApplicationReferenceDataSource {..}
    = ApplicationReferenceDataSource {applicationName = newValue, ..}
instance Property "ReferenceDataSource" ApplicationReferenceDataSource where
  type PropertyType "ReferenceDataSource" ApplicationReferenceDataSource = ReferenceDataSourceProperty
  set newValue ApplicationReferenceDataSource {..}
    = ApplicationReferenceDataSource
        {referenceDataSource = newValue, ..}