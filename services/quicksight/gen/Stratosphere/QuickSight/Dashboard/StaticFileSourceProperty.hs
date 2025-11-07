module Stratosphere.QuickSight.Dashboard.StaticFileSourceProperty (
        module Exports, StaticFileSourceProperty(..),
        mkStaticFileSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StaticFileS3SourceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StaticFileUrlSourceOptionsProperty as Exports
import Stratosphere.ResourceProperties
data StaticFileSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html>
    StaticFileSourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html#cfn-quicksight-dashboard-staticfilesource-s3options>
                              s3Options :: (Prelude.Maybe StaticFileS3SourceOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html#cfn-quicksight-dashboard-staticfilesource-urloptions>
                              urlOptions :: (Prelude.Maybe StaticFileUrlSourceOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticFileSourceProperty :: StaticFileSourceProperty
mkStaticFileSourceProperty
  = StaticFileSourceProperty
      {haddock_workaround_ = (), s3Options = Prelude.Nothing,
       urlOptions = Prelude.Nothing}
instance ToResourceProperties StaticFileSourceProperty where
  toResourceProperties StaticFileSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StaticFileSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Options" Prelude.<$> s3Options,
                            (JSON..=) "UrlOptions" Prelude.<$> urlOptions])}
instance JSON.ToJSON StaticFileSourceProperty where
  toJSON StaticFileSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Options" Prelude.<$> s3Options,
               (JSON..=) "UrlOptions" Prelude.<$> urlOptions]))
instance Property "S3Options" StaticFileSourceProperty where
  type PropertyType "S3Options" StaticFileSourceProperty = StaticFileS3SourceOptionsProperty
  set newValue StaticFileSourceProperty {..}
    = StaticFileSourceProperty {s3Options = Prelude.pure newValue, ..}
instance Property "UrlOptions" StaticFileSourceProperty where
  type PropertyType "UrlOptions" StaticFileSourceProperty = StaticFileUrlSourceOptionsProperty
  set newValue StaticFileSourceProperty {..}
    = StaticFileSourceProperty {urlOptions = Prelude.pure newValue, ..}