module Stratosphere.SageMaker.ImageVersion (
        ImageVersion(..), mkImageVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageVersion
  = ImageVersion {alias :: (Prelude.Maybe (Value Prelude.Text)),
                  aliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                  baseImage :: (Value Prelude.Text),
                  horovod :: (Prelude.Maybe (Value Prelude.Bool)),
                  imageName :: (Value Prelude.Text),
                  jobType :: (Prelude.Maybe (Value Prelude.Text)),
                  mLFramework :: (Prelude.Maybe (Value Prelude.Text)),
                  processor :: (Prelude.Maybe (Value Prelude.Text)),
                  programmingLang :: (Prelude.Maybe (Value Prelude.Text)),
                  releaseNotes :: (Prelude.Maybe (Value Prelude.Text)),
                  vendorGuidance :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageVersion ::
  Value Prelude.Text -> Value Prelude.Text -> ImageVersion
mkImageVersion baseImage imageName
  = ImageVersion
      {baseImage = baseImage, imageName = imageName,
       alias = Prelude.Nothing, aliases = Prelude.Nothing,
       horovod = Prelude.Nothing, jobType = Prelude.Nothing,
       mLFramework = Prelude.Nothing, processor = Prelude.Nothing,
       programmingLang = Prelude.Nothing, releaseNotes = Prelude.Nothing,
       vendorGuidance = Prelude.Nothing}
instance ToResourceProperties ImageVersion where
  toResourceProperties ImageVersion {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ImageVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BaseImage" JSON..= baseImage, "ImageName" JSON..= imageName]
                           (Prelude.catMaybes
                              [(JSON..=) "Alias" Prelude.<$> alias,
                               (JSON..=) "Aliases" Prelude.<$> aliases,
                               (JSON..=) "Horovod" Prelude.<$> horovod,
                               (JSON..=) "JobType" Prelude.<$> jobType,
                               (JSON..=) "MLFramework" Prelude.<$> mLFramework,
                               (JSON..=) "Processor" Prelude.<$> processor,
                               (JSON..=) "ProgrammingLang" Prelude.<$> programmingLang,
                               (JSON..=) "ReleaseNotes" Prelude.<$> releaseNotes,
                               (JSON..=) "VendorGuidance" Prelude.<$> vendorGuidance]))}
instance JSON.ToJSON ImageVersion where
  toJSON ImageVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BaseImage" JSON..= baseImage, "ImageName" JSON..= imageName]
              (Prelude.catMaybes
                 [(JSON..=) "Alias" Prelude.<$> alias,
                  (JSON..=) "Aliases" Prelude.<$> aliases,
                  (JSON..=) "Horovod" Prelude.<$> horovod,
                  (JSON..=) "JobType" Prelude.<$> jobType,
                  (JSON..=) "MLFramework" Prelude.<$> mLFramework,
                  (JSON..=) "Processor" Prelude.<$> processor,
                  (JSON..=) "ProgrammingLang" Prelude.<$> programmingLang,
                  (JSON..=) "ReleaseNotes" Prelude.<$> releaseNotes,
                  (JSON..=) "VendorGuidance" Prelude.<$> vendorGuidance])))
instance Property "Alias" ImageVersion where
  type PropertyType "Alias" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {alias = Prelude.pure newValue, ..}
instance Property "Aliases" ImageVersion where
  type PropertyType "Aliases" ImageVersion = ValueList Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {aliases = Prelude.pure newValue, ..}
instance Property "BaseImage" ImageVersion where
  type PropertyType "BaseImage" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {baseImage = newValue, ..}
instance Property "Horovod" ImageVersion where
  type PropertyType "Horovod" ImageVersion = Value Prelude.Bool
  set newValue ImageVersion {..}
    = ImageVersion {horovod = Prelude.pure newValue, ..}
instance Property "ImageName" ImageVersion where
  type PropertyType "ImageName" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {imageName = newValue, ..}
instance Property "JobType" ImageVersion where
  type PropertyType "JobType" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {jobType = Prelude.pure newValue, ..}
instance Property "MLFramework" ImageVersion where
  type PropertyType "MLFramework" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {mLFramework = Prelude.pure newValue, ..}
instance Property "Processor" ImageVersion where
  type PropertyType "Processor" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {processor = Prelude.pure newValue, ..}
instance Property "ProgrammingLang" ImageVersion where
  type PropertyType "ProgrammingLang" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {programmingLang = Prelude.pure newValue, ..}
instance Property "ReleaseNotes" ImageVersion where
  type PropertyType "ReleaseNotes" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {releaseNotes = Prelude.pure newValue, ..}
instance Property "VendorGuidance" ImageVersion where
  type PropertyType "VendorGuidance" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {vendorGuidance = Prelude.pure newValue, ..}