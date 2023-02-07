import axios from "axios";

export default class XcodeCloudArtifact {
  async get(artifactID: string): Promise<any> {
    const url = `https://api.appstoreconnect.apple.com/v1/ciArtifacts/${artifactID}`;
    return axios.get(url);
  }
}
