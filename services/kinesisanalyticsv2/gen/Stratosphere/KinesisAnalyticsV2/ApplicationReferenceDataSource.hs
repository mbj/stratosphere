module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource (
        module Exports, ApplicationReferenceDataSource(..),
        mkApplicationReferenceDataSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.ReferenceDataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationReferenceDataSource
  = ApplicationReferenceDataSource {applicationName :: (Value Prelude.Text),
                                    referenceDataSource :: ReferenceDataSourceProperty}
mkApplicationReferenceDataSource ::
  Value Prelude.Text
  -> ReferenceDataSourceProperty -> ApplicationReferenceDataSource
mkApplicationReferenceDataSource
  applicationName
  referenceDataSource
  = ApplicationReferenceDataSource
      {applicationName = applicationName,
       referenceDataSource = referenceDataSource}
instance ToResourceProperties ApplicationReferenceDataSource where
  toResourceProperties ApplicationReferenceDataSource {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource",
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