module Stratosphere.MediaPackageV2.OriginEndpoint.DashProgramInformationProperty (
        DashProgramInformationProperty(..),
        mkDashProgramInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashProgramInformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html>
    DashProgramInformationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html#cfn-mediapackagev2-originendpoint-dashprograminformation-copyright>
                                    copyright :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html#cfn-mediapackagev2-originendpoint-dashprograminformation-languagecode>
                                    languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html#cfn-mediapackagev2-originendpoint-dashprograminformation-moreinformationurl>
                                    moreInformationUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html#cfn-mediapackagev2-originendpoint-dashprograminformation-source>
                                    source :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashprograminformation.html#cfn-mediapackagev2-originendpoint-dashprograminformation-title>
                                    title :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashProgramInformationProperty :: DashProgramInformationProperty
mkDashProgramInformationProperty
  = DashProgramInformationProperty
      {haddock_workaround_ = (), copyright = Prelude.Nothing,
       languageCode = Prelude.Nothing,
       moreInformationUrl = Prelude.Nothing, source = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties DashProgramInformationProperty where
  toResourceProperties DashProgramInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashProgramInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Copyright" Prelude.<$> copyright,
                            (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "MoreInformationUrl" Prelude.<$> moreInformationUrl,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "Title" Prelude.<$> title])}
instance JSON.ToJSON DashProgramInformationProperty where
  toJSON DashProgramInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Copyright" Prelude.<$> copyright,
               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "MoreInformationUrl" Prelude.<$> moreInformationUrl,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "Title" Prelude.<$> title]))
instance Property "Copyright" DashProgramInformationProperty where
  type PropertyType "Copyright" DashProgramInformationProperty = Value Prelude.Text
  set newValue DashProgramInformationProperty {..}
    = DashProgramInformationProperty
        {copyright = Prelude.pure newValue, ..}
instance Property "LanguageCode" DashProgramInformationProperty where
  type PropertyType "LanguageCode" DashProgramInformationProperty = Value Prelude.Text
  set newValue DashProgramInformationProperty {..}
    = DashProgramInformationProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "MoreInformationUrl" DashProgramInformationProperty where
  type PropertyType "MoreInformationUrl" DashProgramInformationProperty = Value Prelude.Text
  set newValue DashProgramInformationProperty {..}
    = DashProgramInformationProperty
        {moreInformationUrl = Prelude.pure newValue, ..}
instance Property "Source" DashProgramInformationProperty where
  type PropertyType "Source" DashProgramInformationProperty = Value Prelude.Text
  set newValue DashProgramInformationProperty {..}
    = DashProgramInformationProperty
        {source = Prelude.pure newValue, ..}
instance Property "Title" DashProgramInformationProperty where
  type PropertyType "Title" DashProgramInformationProperty = Value Prelude.Text
  set newValue DashProgramInformationProperty {..}
    = DashProgramInformationProperty
        {title = Prelude.pure newValue, ..}