module Stratosphere.AppMesh.VirtualGateway.SubjectAlternativeNamesProperty (
        module Exports, SubjectAlternativeNamesProperty(..),
        mkSubjectAlternativeNamesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.SubjectAlternativeNameMatchersProperty as Exports
import Stratosphere.ResourceProperties
data SubjectAlternativeNamesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-subjectalternativenames.html>
    SubjectAlternativeNamesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-subjectalternativenames.html#cfn-appmesh-virtualgateway-subjectalternativenames-match>
                                     match :: SubjectAlternativeNameMatchersProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubjectAlternativeNamesProperty ::
  SubjectAlternativeNameMatchersProperty
  -> SubjectAlternativeNamesProperty
mkSubjectAlternativeNamesProperty match
  = SubjectAlternativeNamesProperty
      {haddock_workaround_ = (), match = match}
instance ToResourceProperties SubjectAlternativeNamesProperty where
  toResourceProperties SubjectAlternativeNamesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.SubjectAlternativeNames",
         supportsTags = Prelude.False, properties = ["Match" JSON..= match]}
instance JSON.ToJSON SubjectAlternativeNamesProperty where
  toJSON SubjectAlternativeNamesProperty {..}
    = JSON.object ["Match" JSON..= match]
instance Property "Match" SubjectAlternativeNamesProperty where
  type PropertyType "Match" SubjectAlternativeNamesProperty = SubjectAlternativeNameMatchersProperty
  set newValue SubjectAlternativeNamesProperty {..}
    = SubjectAlternativeNamesProperty {match = newValue, ..}