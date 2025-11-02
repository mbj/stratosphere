module Stratosphere.CodeArtifact.PackageGroup.OriginConfigurationProperty (
        module Exports, OriginConfigurationProperty(..),
        mkOriginConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeArtifact.PackageGroup.RestrictionsProperty as Exports
import Stratosphere.ResourceProperties
data OriginConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-originconfiguration.html>
    OriginConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-originconfiguration.html#cfn-codeartifact-packagegroup-originconfiguration-restrictions>
                                 restrictions :: RestrictionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginConfigurationProperty ::
  RestrictionsProperty -> OriginConfigurationProperty
mkOriginConfigurationProperty restrictions
  = OriginConfigurationProperty
      {haddock_workaround_ = (), restrictions = restrictions}
instance ToResourceProperties OriginConfigurationProperty where
  toResourceProperties OriginConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::PackageGroup.OriginConfiguration",
         supportsTags = Prelude.False,
         properties = ["Restrictions" JSON..= restrictions]}
instance JSON.ToJSON OriginConfigurationProperty where
  toJSON OriginConfigurationProperty {..}
    = JSON.object ["Restrictions" JSON..= restrictions]
instance Property "Restrictions" OriginConfigurationProperty where
  type PropertyType "Restrictions" OriginConfigurationProperty = RestrictionsProperty
  set newValue OriginConfigurationProperty {..}
    = OriginConfigurationProperty {restrictions = newValue, ..}