exports.buildUrl = (req, type, file) => {
    const protocol = req.protocol;
    const host = req.get('host');

    console.log('Protocol: ', protocol);
    console.log('Host: ', host);

    const url = `${protocol}://${host}/images/${type}/${file}`;

    return url;
}